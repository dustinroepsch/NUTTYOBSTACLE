package {
	import citrus.objects.CitrusSprite;

	/**
	 * @author veneciaalvarez
	 */
	public class Obstacle extends CitrusSprite {
		public static const OBSTACLE_LEFT: Number = 0;
		public static const OBSTACLE_RIGHT: Number = 1;
		public static const OBSTACLE_SPEED = 70;
		
		private var direction: Number;
		private var speed: Number;
		public var isBus:Boolean;
		public function Obstacle(speed: int, direction: int,isBus:Boolean, name : String, params : Object = null) {
			super(name, params);
			this.direction = direction;
			this.speed = speed;
			this.isBus = isBus;
			if(OBSTACLE_RIGHT == direction){
				inverted = true;
			}
			
			if (direction == OBSTACLE_RIGHT) //right
				_velocity.x = speed;
			else
				_velocity.x = -speed;
		}

		override public function update(timeDelta:Number):void{
			super.update(timeDelta);
			
			//respawn on the other side
			if (direction == OBSTACLE_LEFT)
			{
				if(x < -150)
					x= 400;
			}
			
			if(direction == OBSTACLE_RIGHT)
			{
				if(x > 400)
					x = -150;
			}
		}
		
		
	}
	
}
