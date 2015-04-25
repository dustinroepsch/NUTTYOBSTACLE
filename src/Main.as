package {
	import citrus.core.starling.ViewportMode;
	import citrus.core.starling.StarlingCitrusEngine;

	/**
	 * @author dusti_000
	 */
	public class Main extends StarlingCitrusEngine {
		public function Main() {
			_baseWidth = 288;
			_baseHeight = 512;
			_viewportMode = ViewportMode.LETTERBOX;
		}

		override public function initialize() : void {
			setUpStarling(true);
		}

		override public function handleStarlingReady() : void {
			state = new StarlingDemoGameState();
		}
	}
}
