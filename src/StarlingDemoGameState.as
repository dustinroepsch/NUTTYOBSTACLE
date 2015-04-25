package {
	import citrus.physics.nape.Nape;
	import citrus.core.starling.StarlingState;
	import citrus.input.controllers.displaylist.VirtualJoystick;
	import citrus.math.MathVector;
	import citrus.objects.CitrusSprite;
	import citrus.physics.box2d.Box2D;
	import citrus.physics.simple.SimpleCitrusSolver;
	import citrus.utils.Mobile;
	import citrus.view.ACitrusCamera;
	import citrus.view.spriteview.SpriteCamera;
	import citrus.view.starlingview.StarlingCamera;

	import flash.display.Bitmap;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/**
	 * @author dusti_000
	 */
	public class StarlingDemoGameState extends StarlingState {
		public function StarlingDemoGameState() {
			super();
		}

		[Embed(source="RES/Level.png")]
		private var Level : Class;
		var level : Bitmap = new Level();
		[Embed(source="RES/Car.png")]
		private var Car : Class;
		var car : Bitmap = new Car();
		[Embed(source="RES/Log.png")]
		private var Logg : Class;
		var log : Bitmap = new Logg();
		[Embed(source="RES/Alligator_angry.png")]
		private var aAlligator : Class;
		var angryalligator : Bitmap = new aAlligator();
		[Embed(source="RES/Alligator_peace.png")]
		private var pAlligator : Class;
		var peacealligator : Bitmap = new pAlligator();
		[Embed(source="RES/Bike.png")]
		private var Bike : Class;
		var bike : Bitmap = new Bike();
		[Embed(source="RES/Bus.png")]
		private var Bus : Class;
		var bus : Bitmap = new Bus();
		[Embed(source="RES/Swan_down.png")]
		private var dSwan : Class;
		var dswan : Bitmap = new dSwan();
		[Embed(source="RES/Swan_up.png")]
		private var uSwan : Class;
		var uswan : Bitmap = new uSwan();
		[Embed(source="RES/Squirrel1_1.png")]
		private var Squirrel1_1 : Class;
		var squirrel1_1 : Bitmap = new Squirrel1_1();
		[Embed(source="RES/Squirrel1_2.png")]
		private var Squirrel1_2 : Class;
		var squirrel1_2 : Bitmap = new Squirrel1_2();
		[Embed(source="RES/Squirrel1_3.png")]
		private var Squirrel1_3 : Class;
		var squirrel1_3 : Bitmap = new Squirrel1_3();
		[Embed(source="RES/Squirrel1_4.png")]
		private var Squirrel1_4 : Class;
		var squirrel1_4 : Bitmap = new Squirrel1_4();
		[Embed(source="RES/Squirrel1_5.png")]
		private var Squirrel1_5 : Class;
		var squirrel1_5 : Bitmap = new Squirrel1_5();
		[Embed(source="RES/Squirrel1_6.png")]
		private var Squirrel1_6 : Class;
		var squirrel1_6 : Bitmap = new Squirrel1_6();
		[Embed(source="RES/Squirrel1_drown.png")]
		private var drSquirrel1 : Class;
		var drsquirrel1 : Bitmap = new drSquirrel1();
		[Embed(source="RES/Squirrel1_rdeath.png")]
		private var rDeSquirrel1 : Class;
		var rdesquirrel1 : Bitmap = new rDeSquirrel1();
		[Embed(source="RES/Squirrel1_udeath.png")]
		private var uDeSquirrel1 : Class;
		var udesquirrel1 : Bitmap = new uDeSquirrel1();

		[Embed(source="RES/Nut.png")]
		private var Nutt : Class;
		var nut : Bitmap = new Nutt();

		override public function initialize() : void {
			super.initialize();
			if (Mobile.isIOS() || Mobile.isAndroid()) {
				var vj : VirtualJoystick = new VirtualJoystick("joy");
				
				//vj.x = 288-50;
				
			}
			//var _camera : SpriteCamera;

			// camera.allowZoom = true;
			// camera.zoomFit(224,384,true);
			// camera
			// camera.zoom(2);
			
		//	var box2D : Box2D = new Box2D("box2D");
		//	box2D.visible = false;
		//	add(box2D);
		//	var nape:Nape = new Nape("nape");
		//	nape.visible = false;
		//	add(nape);
			var solver : SimpleCitrusSolver = new SimpleCitrusSolver("solver", MainCharacter);
			add(solver);
			solver.overlap(MainCharacter, Obstacle);
			solver.overlap(MainCharacter, Water);
			solver.overlap(MainCharacter, Log);
			solver.overlap(MainCharacter, Background);
			solver.overlap(MainCharacter, Nut);

			// y:384
			// x: 224
		    var water : Water = new Water("wata",{x:0, y:32*5 + 2 , width:288, height: 32*4 - 4, updateCallEnabled:true});
			add(water);
			var water2 : Water = new Water("wfffata",{x:32*3, y:32*5 + 2 , width:288, height: 32*4 - 4, updateCallEnabled:true});
			add(water2);
			var secretbackground : Background = new Background("IaaSU", {x:32*4, y:0, width:288, height:512, updateCallEnabled:true, view:level});
			add(secretbackground);
			var background : Background = new Background("ISU", {x:0, y:0, width:288, height:512, updateCallEnabled:true, view:level});
			add(background);
		
			var nut1 : Nut = new Nut("nut1",{x:0, y:32*1, width:32, height:32, updateCallEnabled:true, view:nut});
			add(nut1);
			var nut2 : Nut = new Nut("nutasdf1",{x:32*3, y:32*1, width:32, height:32, updateCallEnabled:true, view:nut});
			add(nut2);
			var nut3 : Nut = new Nut("nut3",{x:32*5, y:32*1, width:32, height:32, updateCallEnabled:true, view:nut});
			add(nut3);
			var nut4 : Nut = new Nut("nffut1",{x:32*8, y:32*1, width:32, height:32, updateCallEnabled:true, view:nut});
			add(nut4);
			var cyclist1 : Obstacle = new Obstacle(35, Obstacle.OBSTACLE_RIGHT,false, "Mike", {x:0, y:32 * 13, width:32, height:32, updateCallEnabled:true, view:bike});
			add(cyclist1);
			var cyclist2 : Obstacle = new Obstacle(35, Obstacle.OBSTACLE_RIGHT,false, "Mikafafe", {x:32 * 5, y:32 * 13, width:32, height:32, updateCallEnabled:true, view:bike});
			add(cyclist2);
			var cyclist3 : Obstacle = new Obstacle(35, Obstacle.OBSTACLE_RIGHT,false, "Mikafafe", {x:32 * 9, y:32 * 13, width:32, height:32, updateCallEnabled:true, view:bike});
			add(cyclist3);
			var obstacle : Obstacle = new Obstacle(60, Obstacle.OBSTACLE_RIGHT, false,"Car1", {x:32 * 4, y:32 * 10, width:32, height:32, updateCallEnabled:true, view:car});
			add(obstacle);
			var car1 : Obstacle = new Obstacle(60, Obstacle.OBSTACLE_RIGHT, false,"Casdfr1", {x:32 * 0, y:32 * 10, width:32, height:32, updateCallEnabled:true, view:car});
			add(car1);
			var car2 : Obstacle = new Obstacle(60, Obstacle.OBSTACLE_RIGHT,false, "Casdfafar1", {x:32 * 10, y:32 * 10, width:32, height:32, updateCallEnabled:true, view:car});
			add(car2);

			var centerroad : Obstacle = new Obstacle(75, Obstacle.OBSTACLE_RIGHT,false, "Carff1", {x:32 * 4, y:32 * 12, width:32, height:32, updateCallEnabled:true, view:car});
			add(centerroad);
			var centerroad1 : Obstacle = new Obstacle(75, Obstacle.OBSTACLE_RIGHT,false, "Casafafadfr1", {x:32 * 0, y:32 * 12, width:32, height:32, updateCallEnabled:true, view:car});
			add(centerroad1);
			var centerroad2 : Obstacle = new Obstacle(75, Obstacle.OBSTACLE_RIGHT,false, "Cassssdfafar1", {x:32 * 10, y:32 * 12, width:32, height:32, updateCallEnabled:true, view:car});
			add(centerroad2);

			var bus1 : Obstacle = new Obstacle(65, Obstacle.OBSTACLE_LEFT, true,"Bus1", {x:0, y:32 * 11, width:32, height:32, updateCallEnabled:true, view:bus});
			add(bus1);
			var bus2 : Obstacle = new Obstacle(65, Obstacle.OBSTACLE_LEFT, true,"Buafs1", {x:32 * 13, y:32 * 11, width:32, height:32, updateCallEnabled:true, view:bus});
			add(bus2);
			var bus3 : Obstacle = new Obstacle(65, Obstacle.OBSTACLE_LEFT, true,"Budfdfs1", {x:32 * 5, y:32 * 11, width:32, height:32, updateCallEnabled:true, view:bus});
			add(bus3);
			var log1 : Log = new Log(Log.LOG_SPEED, Log.LOG_LEFT, "Loggy", {x:32 * 0, y:32 * 3, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(log1);
			var anotherLog : Log = new Log(Log.LOG_SPEED, Log.LOG_LEFT, "LOGGGG", {x:32 * 8, y:32 * 3, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(anotherLog);
			var log2 : Log = new Log(50, Log.LOG_LEFT, "Logger", {x:32 * 3, y:32 * 5, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(log2);
			var logcenter : Log = new Log(50, Log.LOG_LEFT, "Loggercenteryo", {x:32 * 7, y:32 * 5, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(logcenter);
			var logcenteragain : Log = new Log(50, Log.LOG_LEFT, "Loggeraaa", {x:32 * 11, y:32 * 5, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(logcenteragain);
			var log3 : Log = new Log(Log.LOG_SPEED, Log.LOG_LEFT, "Logathan", {x:32 * 4, y:32 * 3, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(log3);

			var log4 : Log = new Log(Log.LOG_SPEED, Log.LOG_LEFT, "Loggo", {x:32 * 12, y:32 * 3, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(log4);

			var logbottom : Log = new Log(Log.LOG_SPEED, Log.LOG_LEFT, "Loggergagag", {x:32 * 2, y:32 * 7, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(logbottom);
			var logbottom2 : Log = new Log(Log.LOG_SPEED, Log.LOG_LEFT, "Loggerbottom", {x:32 * 8, y:32 * 7, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(logbottom2);
			var logbottom3 : Log = new Log(Log.LOG_SPEED, Log.LOG_LEFT, "Loggeafafr", {x:32 * 12, y:32 * 7, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:log});
			add(logbottom3);

			var swan1 : Swan = new Swan(40, Log.LOG_RIGHT, "Lancelot", {x:0, y:32 * 4, width:32, height:32, updateCallEnabled:true, view:uswan});
			add(swan1);

			var swan2 : Swan = new Swan(40, Log.LOG_RIGHT, "Elaine", {x:32 * 6, y:32 * 4, width:32, height:32, updateCallEnabled:true, view:uswan});
			add(swan2);
			var swan3 : Swan = new Swan(40, Log.LOG_RIGHT, "Lanceloafaft", {x:32 * 9, y:32 * 4, width:32, height:32, updateCallEnabled:true, view:uswan});
			add(swan3);

			var alligator1 : Alligator = new Alligator(50, Log.LOG_RIGHT, "Franklin", {x:32 * 3, y:32 * 6, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:peacealligator});
			add(alligator1);
			var alligator2 : Alligator = new Alligator(50, Log.LOG_RIGHT, "Franfffklin", {x:32 * 8, y:32 * 6, width:Log.LOG_WIDTH, height:Log.LOG_HEIGHT, updateCallEnabled:true, view:peacealligator});
			add(alligator2);
			var mainCharacter : MainCharacter = new MainCharacter("Bob", {x:32 * 4, y:32 *15 , width:MainCharacter.MAIN_WIDTH, height:MainCharacter.MAIN_HEIGHT, updateCallEnabled:true, view:squirrel1_1});
			add(mainCharacter);

			mainCharacter.onCollide.add(_collisionStart);
			// target:Object, bounds:Rectangle = null, center:Point = null, easing:Point = nul
			// _camera = view.camera.setUp(background,new Rectangle(224,384), new Point(224/2,384/2)) as SpriteCamera;
			// _camera.allowZoom = true;
			// _camera.zoomFit(224,384);
			// _camera = view.camera as SpriteCamera;
			// _camera.setUp(mainCharacter,new Rectangle(0,0,224,384), new Point(0.5, 0.5), new Point(0.05, 0.05));
			// _camera.allowRotation = true;
			// _camera.allowZoom = true;
			// _camera.deadZone = new Rectangle(0, 0, 2*stage.stageWidth/3, stage.stageHeight/3);
			// _camera.parallaxMode = ACitrusCamera.PARALLAX_MODE_DEPTH;
			// _camera.boundsMode = ACitrusCamera.BOUNDS_MODE_AABB;

			// _camera.setZoom(5);
			// _camera.reset();

			// _camera.target = mainCharacter;
			// view.camera.enabled = true;
			// view.camera.zoom(2);
			// _camera = view.camera as SpriteCamera;
			// _camera.enabled = true;
			// a reference for future use
			
			/*
			view.camera.enabled = true;

			view.camera.setUp(background, null, new Point(0.5, 0.5));

			view.camera.bounds = new Rectangle(0, 0, 200000, 200000);
			// _camera.allowRotation = true;
			view.camera.allowZoom = true;
			// _camera.easing.setTo(1, 1);
			// _camera.rotationEasing = 1;
			// _camera.zoomEasing = 1;
			view.camera.zoomFit(288, 512, true);
			view.camera.reset();
			 * 
			 * 
			 */
		}
		    var watercount:Number = 0;

		private function _collisionStart(self : CitrusSprite, other : CitrusSprite, normal : MathVector, impact : Number) : void {
			var obj : MainCharacter = MainCharacter(self);
			
			if (other is Nut){
				other.kill = true;
				obj.restart();
			}
			if (other is Water){
				trace("colliding with water\n");
			}else{
				
			}
			if (other is Log){
				trace ("log: " + other.x  + " " + other.y);
			}
			
			if (!(other is Background || other is Water)){
					watercount = 0;
			}
			if (other is Water ){
						if (watercount <= 2){
							watercount++;
						}else{
							obj.restart();
							watercount = 0;
						}
			}
			if (other.y == self.y  || other is Background || other is Water) {
				
				if (other is Obstacle ) {
					var obs:Obstacle =  Obstacle(other);
					if (obs.isBus){
						if (Math.abs(other.x - 32 - self.x) <= 64){
							obj.restart();
						}
					}else{
						if (Math.abs(other.x - 32 - self.x) <= 32){
							obj.restart();
							
						}
					}
					trace("dead squirrel :(");
				} else if (other is Log && Math.abs(other.x + 50 - self.x) <= 64) {
					// Log, Swan, or Alligator
					MainCharacter.colliding = true;
					if (other is Alligator) {
						if (other.y == self.y) {
							var obj2 : Alligator = Alligator(other);
							if (obj2.isEnemy == true) {
								// kill if enemy
								obj.restart();
								trace("died via enemy alligator");
							} else {
								// ride alligator if friendly
								obj.changeVelocity(obj2.getSpeed());
								trace("riding friendly alligator");
							}
						}
					} else if (other is Swan) {
						// Swan
						if (other.y == self.y && Math.abs(other.x - 32 - self.x) <= 32) {
							var obj3 : Swan = Swan(other);
							if (obj3.underwater == true) {
								// kill if Swan is underwater
								obj.restart();
								trace("died via underwater Swan");
							} else {
								// ride floating swan
								obj.changeVelocity(obj3.getSpeed());
								trace("riding floating swan");
							}
						}
					} else {
						if (other.y == self.y && Math.abs(other.x + 50 - self.x) <= 64) {
							var obj4 : Log = Log(other);
							obj.changeVelocity(obj4.getSpeed());
							trace("just riding a log:)");
						}
					}
				} else if (other is Background) {
					trace(obj.collisions);
					MainCharacter.colliding = false;
					trace("just chillin");
				}
			}
		}
	}
}
