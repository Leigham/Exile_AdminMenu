class CfgPatches {
	class UG_AM {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgFunctions {
	class UG_AM {
		class A3CCustom {
			file = "UG_AM";
			class init {
				postInit = 1;
			};
		};
	};
};