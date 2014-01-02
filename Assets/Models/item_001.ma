//Maya ASCII 2014 scene
//Name: item_001.ma
//Last modified: Thu, Jan 02, 2014 09:01:09 AM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.4774364597217469 1.0456020298896789 2.8499644761873557 ;
	setAttr ".r" -type "double3" -15.476862662401622 -40.999999999999609 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 3.9183252476889896;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -5.9604644775390625e-008 0 -8.9406967163085938e-008 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 2.2258930281677922;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.3704247105266321;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "itemCore";
createNode mesh -n "itemCoreShape" -p "itemCore";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:59]" "f[90:119]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[60:89]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.08993647244888775 0.94737303531348238 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 122 ".uvst[0].uvsp[0:121]" -type "float2" 0.98907423 0.60395575
		 0.95677304 0.70336819 0.50000012 0.49999982 0.90450883 0.79389262 0.83456564 0.87157238
		 0.75000024 0.93301272 0.65450871 0.97552836 0.55226445 0.99726105 0.44773591 0.99726105
		 0.34549165 0.97552836 0.25000006 0.93301272 0.16543478 0.87157249 0.095491529 0.79389262
		 0.043227315 0.70336831 0.010926247 0.60395575 0 0.49999988 0.010926247 0.39604402
		 0.043227315 0.29663157 0.095491588 0.20610726 0.16543478 0.12842745 0.25000006 0.066987216
		 0.34549159 0.024471641 0.44773585 0.0027389526 0.55226433 0.0027389526 0.65450859
		 0.024471641 0.75 0.066987276 0.83456528 0.12842751 0.90450859 0.20610732 0.95677269
		 0.29663157 0.98907375 0.39604402 1 0.49999982 0.87621093 0.57996595 0.8513639 0.65643716
		 0.8513639 0.65643716 0.87621093 0.57996595 0.81116068 0.72607136 0.81116068 0.72607136
		 0.75735807 0.78582501 0.75735807 0.78582501 0.69230783 0.83308685 0.69230783 0.83308685
		 0.61885273 0.8657912 0.61885273 0.8657912 0.54020321 0.88250864 0.54020321 0.88250864
		 0.45979667 0.88250864 0.45979667 0.88250864 0.38114715 0.8657912 0.38114715 0.8657912
		 0.30769205 0.83308697 0.30769205 0.83308697 0.24264181 0.78582501 0.24264181 0.78582501
		 0.18883932 0.72607136 0.18883932 0.72607136 0.14863598 0.65643716 0.14863598 0.65643716
		 0.12378901 0.57996607 0.12378901 0.57996607 0.11538422 0.49999994 0.11538422 0.49999994
		 0.12378907 0.42003381 0.12378907 0.42003381 0.14863604 0.34356266 0.14863604 0.34356266
		 0.18883932 0.27392852 0.18883932 0.27392852 0.24264181 0.21417481 0.24264181 0.21417481
		 0.30769205 0.16691303 0.30769205 0.16691303 0.38114709 0.13420874 0.38114709 0.13420874
		 0.45979661 0.1174913 0.45979661 0.1174913 0.54020309 0.1174913 0.54020309 0.1174913
		 0.61885262 0.1342088 0.61885262 0.1342088 0.69230759 0.16691303 0.69230759 0.16691303
		 0.75735784 0.21417487 0.75735784 0.21417487 0.81116033 0.27392858 0.81116033 0.27392858
		 0.85136366 0.34356266 0.85136366 0.34356266 0.87621057 0.42003381 0.87621057 0.42003381
		 0.8846153 0.49999988 0.8846153 0.49999988 0.49999988 0.49999988 0.79366374 0.63074744
		 0.81443048 0.56683409 0.76006246 0.68894649 0.7150954 0.73888755 0.6607275 0.77838814
		 0.59933496 0.80572188 0.53360116 0.81969404 0.46639872 0.81969404 0.40066481 0.80572188
		 0.33927238 0.77838814 0.28490448 0.73888755 0.23993731 0.68894649 0.20633614 0.63074744
		 0.18556947 0.56683421 0.17854488 0.49999994 0.18556952 0.43316567 0.20633614 0.36925244
		 0.23993731 0.31105345 0.28490448 0.26111233 0.33927238 0.2216118 0.40066481 0.19427812
		 0.46639866 0.18030596 0.53360105 0.18030596 0.59933484 0.19427812 0.66072726 0.22161186
		 0.71509516 0.26111239 0.76006234 0.31105351 0.7936635 0.36925244 0.81443012 0.43316567
		 0.82145476 0.49999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".pt[0:91]" -type "float3"  -0.97814858 0 0.2 -0.91354638 
		0 0.2 -0.80901784 0 0.2 -0.66913134 0 0.2 -0.5000006 0 0.2 -0.30901742 0 0.2 -0.10452872 
		0 0.2 0.10452838 0 0.2 0.30901709 0 0.2 0.50000024 0 0.2 0.66913092 0 0.2 0.80901742 
		0 0.2 0.91354591 0 0.2 0.9781481 0 0.2 1.0000005 0 0.2 0.97814804 0 0.2 0.91354585 
		0 0.2 0.80901736 0 0.2 0.66913092 0 0.2 0.50000024 0 0.2 0.30901715 0 0.2 0.10452855 
		0 0.2 -0.10452843 0 0.2 -0.309017 0 0.2 -0.50000006 0 0.2 -0.66913068 0 0.2 -0.80901706 
		0 0.2 -0.91354555 0 0.2 -0.97814763 0 0.2 -1 0 0.2 -0.97814858 0 -0.2 -0.91354638 
		0 -0.2 -0.80901784 0 -0.2 -0.66913134 0 -0.2 -0.5000006 0 -0.2 -0.30901742 0 -0.2 
		-0.10452872 0 -0.2 0.10452838 0 -0.2 0.30901709 0 -0.2 0.50000024 0 -0.2 0.66913092 
		0 -0.2 0.80901742 0 -0.2 0.91354591 0 -0.2 0.9781481 0 -0.2 1.0000005 0 -0.2 0.97814804 
		0 -0.2 0.91354585 0 -0.2 0.80901736 0 -0.2 0.66913092 0 -0.2 0.50000024 0 -0.2 0.30901715 
		0 -0.2 0.10452855 0 -0.2 -0.10452843 0 -0.2 -0.309017 0 -0.2 -0.50000006 0 -0.2 -0.66913068 
		0 -0.2 -0.80901706 0 -0.2 -0.91354555 0 -0.2 -0.97814763 0 -0.2 -1 0 -0.2 -1.2246469e-017 
		0 0.2 -0.81751937 0 -0.19999999 -0.7635259 0 -0.19999999 3.9152525e-008 0 -0.19999999 
		-0.67616272 0 -0.19999999 -0.55924821 0 -0.19999999 -0.41789165 0 -0.19999999 -0.25827128 
		0 -0.19999999 -0.087363221 0 -0.19999999 0.087363027 0 -0.19999999 0.25827107 0 -0.19999999 
		0.41789144 0 -0.19999999 0.55924785 0 -0.19999999 0.6761626 0 -0.19999999 0.76352561 
		0 -0.19999999 0.81751895 0 -0.19999999 0.83578289 0 -0.19999999 0.81751889 0 -0.19999999 
		0.76352561 0 -0.19999999 0.67616248 0 -0.19999999 0.55924785 0 -0.19999999 0.41789144 
		0 -0.19999999 0.25827113 0 -0.19999999 0.087363169 0 -0.19999999 -0.08736299 0 -0.19999999 
		-0.25827095 0 -0.19999999 -0.41789123 0 -0.19999999 -0.55924761 0 -0.19999999 -0.67616224 
		0 -0.19999999 -0.76352525 0 -0.19999999 -0.81751847 0 -0.19999999 -0.83578241 0 -0.19999999;
	setAttr -s 92 ".vt[0:91]"  0.48907429 0.10395587 -0.1 0.45677319 0.20336844 -0.1
		 0.40450892 0.29389283 -0.1 0.33456567 0.37157267 -0.1 0.2500003 0.43301302 -0.1 0.15450871 0.47552863 -0.1
		 0.052264359 0.49726135 -0.1 -0.052264191 0.49726135 -0.1 -0.15450855 0.47552866 -0.1
		 -0.25000012 0.43301305 -0.1 -0.33456546 0.3715727 -0.1 -0.40450871 0.29389286 -0.1
		 -0.45677295 0.20336848 -0.1 -0.48907405 0.10395595 -0.1 -0.50000024 4.4703484e-008 -0.1
		 -0.48907402 -0.10395585 -0.1 -0.45677292 -0.20336837 -0.1 -0.40450868 -0.29389271 -0.1
		 -0.33456546 -0.37157252 -0.1 -0.25000012 -0.43301284 -0.1 -0.15450858 -0.47552839 -0.1
		 -0.052264277 -0.49726108 -0.1 0.052264214 -0.49726108 -0.1 0.1545085 -0.47552836 -0.1
		 0.25000003 -0.43301278 -0.1 0.33456534 -0.37157246 -0.1 0.40450853 -0.29389265 -0.1
		 0.45677277 -0.20336834 -0.1 0.48907381 -0.10395585 -0.1 0.5 4.4408922e-017 -0.1 0.48907429 0.10395587 0.1
		 0.45677319 0.20336844 0.1 0.40450892 0.29389283 0.1 0.33456567 0.37157267 0.1 0.2500003 0.43301302 0.1
		 0.15450871 0.47552863 0.1 0.052264359 0.49726135 0.1 -0.052264191 0.49726135 0.1
		 -0.15450855 0.47552866 0.1 -0.25000012 0.43301305 0.1 -0.33456546 0.3715727 0.1 -0.40450871 0.29389286 0.1
		 -0.45677295 0.20336848 0.1 -0.48907405 0.10395595 0.1 -0.50000024 4.4703484e-008 0.1
		 -0.48907402 -0.10395585 0.1 -0.45677292 -0.20336837 0.1 -0.40450868 -0.29389271 0.1
		 -0.33456546 -0.37157252 0.1 -0.25000012 -0.43301284 0.1 -0.15450858 -0.47552839 0.1
		 -0.052264277 -0.49726108 0.1 0.052264214 -0.49726108 0.1 0.1545085 -0.47552836 0.1
		 0.25000003 -0.43301278 0.1 0.33456534 -0.37157246 0.1 0.40450853 -0.29389265 0.1
		 0.45677277 -0.20336834 0.1 0.48907381 -0.10395585 0.1 0.5 -4.4408922e-017 0.1 0 4.4408922e-017 -0.1
		 0.40875968 0.086884513 0.099999994 0.38176295 0.16997178 0.099999994 -1.9576262e-008 2.3973396e-008 0.099999994
		 0.33808136 0.24563046 0.099999994 0.2796241 0.31055394 0.099999994 0.20894583 0.36190465 0.099999994
		 0.12913564 0.3974385 0.099999994 0.04368161 0.41560233 0.099999994 -0.043681514 0.41560233 0.099999994
		 -0.12913553 0.39743853 0.099999994 -0.20894572 0.36190468 0.099999994 -0.27962393 0.31055397 0.099999994
		 -0.3380813 0.24563049 0.099999994 -0.3817628 0.16997182 0.099999994 -0.40875947 0.086884581 0.099999994
		 -0.41789144 6.1335768e-008 0.099999994 -0.40875944 -0.086884446 0.099999994 -0.3817628 -0.16997167 0.099999994
		 -0.33808124 -0.24563032 0.099999994 -0.27962393 -0.31055376 0.099999994 -0.20894572 -0.36190444 0.099999994
		 -0.12913556 -0.39743826 0.099999994 -0.043681584 -0.41560203 0.099999994 0.043681495 -0.41560203 0.099999994
		 0.12913547 -0.39743823 0.099999994 0.20894562 -0.36190441 0.099999994 0.27962381 -0.3105537 0.099999994
		 0.33808112 -0.24563026 0.099999994 0.38176262 -0.16997166 0.099999994 0.40875924 -0.086884446 0.099999994
		 0.4178912 2.3973396e-008 0.099999994;
	setAttr -s 210 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 0 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 30 0 0 30 1 1 31 1 2 32 1 3 33 1
		 4 34 1 5 35 1 6 36 1 7 37 1 8 38 1 9 39 1 10 40 1 11 41 1 12 42 1 13 43 1 14 44 1
		 15 45 1 16 46 1 17 47 1 18 48 1 19 49 1 20 50 1 21 51 1 22 52 1 23 53 1 24 54 1 25 55 1
		 26 56 1 27 57 1 28 58 1 29 59 1 60 0 1 60 1 1 60 2 1 60 3 1 60 4 1 60 5 1 60 6 1
		 60 7 1 60 8 1 60 9 1 60 10 1 60 11 1 60 12 1 60 13 1 60 14 1 60 15 1 60 16 1 60 17 1
		 60 18 1 60 19 1 60 20 1 60 21 1 60 22 1 60 23 1 60 24 1 60 25 1 60 26 1 60 27 1 60 28 1
		 60 29 1 30 61 0 31 62 0 61 62 0 62 63 1 61 63 1 32 64 0 62 64 0 64 63 1 33 65 0 64 65 0
		 65 63 1 34 66 0 65 66 0 66 63 1 35 67 0 66 67 0 67 63 1 36 68 0 67 68 0 68 63 1 37 69 0
		 68 69 0 69 63 1 38 70 0 69 70 0 70 63 1 39 71 0 70 71 0 71 63 1 40 72 0 71 72 0 72 63 1
		 41 73 0 72 73 0 73 63 1 42 74 0 73 74 0 74 63 1 43 75 0 74 75 0 75 63 1 44 76 0 75 76 0
		 76 63 1 45 77 0 76 77 0;
	setAttr ".ed[166:209]" 77 63 1 46 78 0 77 78 0 78 63 1 47 79 0 78 79 0 79 63 1
		 48 80 0 79 80 0 80 63 1 49 81 0 80 81 0 81 63 1 50 82 0 81 82 0 82 63 1 51 83 0 82 83 0
		 83 63 1 52 84 0 83 84 0 84 63 1 53 85 0 84 85 0 85 63 1 54 86 0 85 86 0 86 63 1 55 87 0
		 86 87 0 87 63 1 56 88 0 87 88 0 88 63 1 57 89 0 88 89 0 89 63 1 58 90 0 89 90 0 90 63 1
		 59 91 0 90 91 0 91 63 1 91 61 0;
	setAttr -s 120 -ch 420 ".fc[0:119]" -type "polyFaces" 
		f 4 0 61 -31 -61
		mu 0 4 31 32 33 34
		f 4 1 62 -32 -62
		mu 0 4 32 35 36 33
		f 4 2 63 -33 -63
		mu 0 4 35 37 38 36
		f 4 3 64 -34 -64
		mu 0 4 37 39 40 38
		f 4 4 65 -35 -65
		mu 0 4 39 41 42 40
		f 4 5 66 -36 -66
		mu 0 4 41 43 44 42
		f 4 6 67 -37 -67
		mu 0 4 43 45 46 44
		f 4 7 68 -38 -68
		mu 0 4 45 47 48 46
		f 4 8 69 -39 -69
		mu 0 4 47 49 50 48
		f 4 9 70 -40 -70
		mu 0 4 49 51 52 50
		f 4 10 71 -41 -71
		mu 0 4 51 53 54 52
		f 4 11 72 -42 -72
		mu 0 4 53 55 56 54
		f 4 12 73 -43 -73
		mu 0 4 55 57 58 56
		f 4 13 74 -44 -74
		mu 0 4 57 59 60 58
		f 4 14 75 -45 -75
		mu 0 4 59 61 62 60
		f 4 15 76 -46 -76
		mu 0 4 61 63 64 62
		f 4 16 77 -47 -77
		mu 0 4 63 65 66 64
		f 4 17 78 -48 -78
		mu 0 4 65 67 68 66
		f 4 18 79 -49 -79
		mu 0 4 67 69 70 68
		f 4 19 80 -50 -80
		mu 0 4 69 71 72 70
		f 4 20 81 -51 -81
		mu 0 4 71 73 74 72
		f 4 21 82 -52 -82
		mu 0 4 73 75 76 74
		f 4 22 83 -53 -83
		mu 0 4 75 77 78 76
		f 4 23 84 -54 -84
		mu 0 4 77 79 80 78
		f 4 24 85 -55 -85
		mu 0 4 79 81 82 80
		f 4 25 86 -56 -86
		mu 0 4 81 83 84 82
		f 4 26 87 -57 -87
		mu 0 4 83 85 86 84
		f 4 27 88 -58 -88
		mu 0 4 85 87 88 86
		f 4 28 89 -59 -89
		mu 0 4 87 89 90 88
		f 4 29 60 -60 -90
		mu 0 4 89 31 34 90
		f 3 -1 -91 91
		mu 0 3 32 31 91
		f 3 -2 -92 92
		mu 0 3 35 32 91
		f 3 -3 -93 93
		mu 0 3 37 35 91
		f 3 -4 -94 94
		mu 0 3 39 37 91
		f 3 -5 -95 95
		mu 0 3 41 39 91
		f 3 -6 -96 96
		mu 0 3 43 41 91
		f 3 -7 -97 97
		mu 0 3 45 43 91
		f 3 -8 -98 98
		mu 0 3 47 45 91
		f 3 -9 -99 99
		mu 0 3 49 47 91
		f 3 -10 -100 100
		mu 0 3 51 49 91
		f 3 -11 -101 101
		mu 0 3 53 51 91
		f 3 -12 -102 102
		mu 0 3 55 53 91
		f 3 -13 -103 103
		mu 0 3 57 55 91
		f 3 -14 -104 104
		mu 0 3 59 57 91
		f 3 -15 -105 105
		mu 0 3 61 59 91
		f 3 -16 -106 106
		mu 0 3 63 61 91
		f 3 -17 -107 107
		mu 0 3 65 63 91
		f 3 -18 -108 108
		mu 0 3 67 65 91
		f 3 -19 -109 109
		mu 0 3 69 67 91
		f 3 -20 -110 110
		mu 0 3 71 69 91
		f 3 -21 -111 111
		mu 0 3 73 71 91
		f 3 -22 -112 112
		mu 0 3 75 73 91
		f 3 -23 -113 113
		mu 0 3 77 75 91
		f 3 -24 -114 114
		mu 0 3 79 77 91
		f 3 -25 -115 115
		mu 0 3 81 79 91
		f 3 -26 -116 116
		mu 0 3 83 81 91
		f 3 -27 -117 117
		mu 0 3 85 83 91
		f 3 -28 -118 118
		mu 0 3 87 85 91
		f 3 -29 -119 119
		mu 0 3 89 87 91
		f 3 -30 -120 90
		mu 0 3 31 89 91
		f 3 122 123 -125
		mu 0 3 0 1 2
		f 3 126 127 -124
		mu 0 3 1 3 2
		f 3 129 130 -128
		mu 0 3 3 4 2
		f 3 132 133 -131
		mu 0 3 4 5 2
		f 3 135 136 -134
		mu 0 3 5 6 2
		f 3 138 139 -137
		mu 0 3 6 7 2
		f 3 141 142 -140
		mu 0 3 7 8 2
		f 3 144 145 -143
		mu 0 3 8 9 2
		f 3 147 148 -146
		mu 0 3 9 10 2
		f 3 150 151 -149
		mu 0 3 10 11 2
		f 3 153 154 -152
		mu 0 3 11 12 2
		f 3 156 157 -155
		mu 0 3 12 13 2
		f 3 159 160 -158
		mu 0 3 13 14 2
		f 3 162 163 -161
		mu 0 3 14 15 2
		f 3 165 166 -164
		mu 0 3 15 16 2
		f 3 168 169 -167
		mu 0 3 16 17 2
		f 3 171 172 -170
		mu 0 3 17 18 2
		f 3 174 175 -173
		mu 0 3 18 19 2
		f 3 177 178 -176
		mu 0 3 19 20 2
		f 3 180 181 -179
		mu 0 3 20 21 2
		f 3 183 184 -182
		mu 0 3 21 22 2
		f 3 186 187 -185
		mu 0 3 22 23 2
		f 3 189 190 -188
		mu 0 3 23 24 2
		f 3 192 193 -191
		mu 0 3 24 25 2
		f 3 195 196 -194
		mu 0 3 25 26 2
		f 3 198 199 -197
		mu 0 3 26 27 2
		f 3 201 202 -200
		mu 0 3 27 28 2
		f 3 204 205 -203
		mu 0 3 28 29 2
		f 3 207 208 -206
		mu 0 3 29 30 2
		f 3 209 124 -209
		mu 0 3 30 0 2
		f 4 30 121 -123 -121
		mu 0 4 34 33 92 93
		f 4 31 125 -127 -122
		mu 0 4 33 36 94 92
		f 4 32 128 -130 -126
		mu 0 4 36 38 95 94
		f 4 33 131 -133 -129
		mu 0 4 38 40 96 95
		f 4 34 134 -136 -132
		mu 0 4 40 42 97 96
		f 4 35 137 -139 -135
		mu 0 4 42 44 98 97
		f 4 36 140 -142 -138
		mu 0 4 44 46 99 98
		f 4 37 143 -145 -141
		mu 0 4 46 48 100 99
		f 4 38 146 -148 -144
		mu 0 4 48 50 101 100
		f 4 39 149 -151 -147
		mu 0 4 50 52 102 101
		f 4 40 152 -154 -150
		mu 0 4 52 54 103 102
		f 4 41 155 -157 -153
		mu 0 4 54 56 104 103
		f 4 42 158 -160 -156
		mu 0 4 56 58 105 104
		f 4 43 161 -163 -159
		mu 0 4 58 60 106 105
		f 4 44 164 -166 -162
		mu 0 4 60 62 107 106
		f 4 45 167 -169 -165
		mu 0 4 62 64 108 107
		f 4 46 170 -172 -168
		mu 0 4 64 66 109 108
		f 4 47 173 -175 -171
		mu 0 4 66 68 110 109
		f 4 48 176 -178 -174
		mu 0 4 68 70 111 110
		f 4 49 179 -181 -177
		mu 0 4 70 72 112 111
		f 4 50 182 -184 -180
		mu 0 4 72 74 113 112
		f 4 51 185 -187 -183
		mu 0 4 74 76 114 113
		f 4 52 188 -190 -186
		mu 0 4 76 78 115 114
		f 4 53 191 -193 -189
		mu 0 4 78 80 116 115
		f 4 54 194 -196 -192
		mu 0 4 80 82 117 116
		f 4 55 197 -199 -195
		mu 0 4 82 84 118 117
		f 4 56 200 -202 -198
		mu 0 4 84 86 119 118
		f 4 57 203 -205 -201
		mu 0 4 86 88 120 119
		f 4 58 206 -208 -204
		mu 0 4 88 90 121 120
		f 4 59 120 -210 -207
		mu 0 4 90 34 93 121;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "itemRotator";
createNode mesh -n "itemRotatorShape" -p "itemRotator";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.41746169 0.91494739
		 0.49999988 0.92307663 0.49999988 0.92307663 0.41746169 0.91494739 0.33809543 0.89087188
		 0.33809543 0.89087188 0.26495099 0.85177541 0.26495099 0.85177541 0.2008394 0.79916024
		 0.2008394 0.79916024 0.14822435 0.73504865 0.14822435 0.73504865 0.10912788 0.66190434
		 0.10912788 0.66190434 0.08505249 0.58253801 0.08505249 0.58253801 0.076923192 0.49999982
		 0.076923192 0.49999982 0.58253813 0.085052609 0.5 0.076923251 0.5 0.076923251 0.58253813
		 0.085052609 0.66190445 0.10912812 0.66190445 0.10912812 0.73504877 0.14822471 0.73504877
		 0.14822471 0.79916036 0.20083976 0.79916036 0.20083976 0.85177529 0.26495129 0.85177529
		 0.26495129 0.89087176 0.33809566 0.89087176 0.33809566 0.91494715 0.41746193 0.91494715
		 0.41746193 0.92307687 0.49999988 0.92307687 0.49999988 0.49999988 0.99999988 0.40245467
		 0.99039245 0.30865812 0.96193957 0.22221476 0.91573465 0.14644653 0.85355318 0.084265113
		 0.77778494 0.038060188 0.69134152 0.0096074343 0.59754491 0 0.49999982 0.49999994
		 1.1920929e-007 0.59754503 0.0096074343 0.69134164 0.038060308 0.77778494 0.084265292
		 0.85355318 0.1464467 0.91573453 0.22221494 0.96193945 0.3086583 0.99039221 0.40245485
		 1 0.49999988 0.49999988 0.99999988 0.40245467 0.99039245 0.30865812 0.96193957 0.22221476
		 0.91573465 0.14644653 0.85355318 0.084265113 0.77778494 0.038060188 0.69134152 0.0096074343
		 0.59754491 0 0.49999982 0.49999994 1.1920929e-007 0.59754503 0.0096074343 0.69134164
		 0.038060308 0.77778494 0.084265292 0.85355318 0.1464467 0.91573453 0.22221494 0.96193945
		 0.3086583 0.99039221 0.40245485 1 0.49999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".pt[0:71]" -type "float3"  -1.0999999 0 0.125 2.9802322e-008 
		0 0.125 0.2145993 0 0.125 0.4209516 0 0.125 0.61112702 0 0.125 0.77781713 0 0.125 
		0.91461611 0 0.125 1.0162669 0 0.125 1.0788631 0 0.125 1.0999992 0 0.125 -3.7252903e-007 
		0 0.125 -0.21459952 0 0.125 -0.42095172 0 0.125 -0.61112702 0 0.125 -0.77781701 0 
		0.125 -0.91461587 0 0.125 -1.0162666 0 0.125 -1.0788627 0 0.125 -1.0999999 0 -0.125 
		2.9802322e-008 0 -0.125 0.2145993 0 -0.125 0.4209516 0 -0.125 0.61112702 0 -0.125 
		0.77781713 0 -0.125 0.91461611 0 -0.125 1.0162669 0 -0.125 1.0788631 0 -0.125 1.0999992 
		0 -0.125 -3.7252903e-007 0 -0.125 -0.21459952 0 -0.125 -0.42095172 0 -0.125 -0.61112702 
		0 -0.125 -0.77781701 0 -0.125 -0.91461587 0 -0.125 -1.0162666 0 -0.125 -1.0788627 
		0 -0.125 -1.3 0 -0.125 7.4505806e-008 0 -0.125 0.25361744 0 -0.125 0.49748841 0 -0.125 
		0.72224116 0 -0.125 0.91923857 0 -0.125 1.0809102 0 -0.125 1.2010429 0 -0.125 1.2750202 
		0 -0.125 1.2999994 0 -0.125 -1.6391277e-007 0 -0.125 -0.25361744 0 -0.125 -0.49748832 
		0 -0.125 -0.72224098 0 -0.125 -0.91923833 0 -0.125 -1.0809098 0 -0.125 -1.2010427 
		0 -0.125 -1.27502 0 -0.125 -1.3 0 0.125 7.4505806e-008 0 0.125 0.25361744 0 0.125 
		0.49748841 0 0.125 0.72224116 0 0.125 0.91923857 0 0.125 1.0809102 0 0.125 1.2010429 
		0 0.125 1.2750202 0 0.125 1.2999994 0 0.125 -1.6391277e-007 0 0.125 -0.25361744 0 
		0.125 -0.49748832 0 0.125 -0.72224098 0 0.125 -0.91923833 0 0.125 -1.0809098 0 0.125 
		-1.2010427 0 0.125 -1.27502 0 0.125;
	setAttr -s 72 ".vt[0:71]"  0.54999995 0 -0.0625 -1.4901161e-008 0.54999977 -0.0625
		 -0.10729965 0.53943169 -0.0625 -0.2104758 0.50813347 -0.0625 -0.30556351 0.45730802 -0.0625
		 -0.38890857 0.38890848 -0.0625 -0.45730805 0.30556339 -0.0625 -0.50813347 0.21047568 -0.0625
		 -0.53943157 0.10729952 -0.0625 -0.54999959 -8.9406967e-008 -0.0625 1.8626451e-007 -0.54999948 -0.0625
		 0.10729976 -0.53943133 -0.0625 0.21047586 -0.50813317 -0.0625 0.30556351 -0.4573077 -0.0625
		 0.38890851 -0.38890815 -0.0625 0.45730793 -0.30556309 -0.0625 0.50813329 -0.21047541 -0.0625
		 0.53943133 -0.10729929 -0.0625 0.54999995 0 0.0625 -1.4901161e-008 0.54999977 0.0625
		 -0.10729965 0.53943169 0.0625 -0.2104758 0.50813347 0.0625 -0.30556351 0.45730802 0.0625
		 -0.38890857 0.38890848 0.0625 -0.45730805 0.30556339 0.0625 -0.50813347 0.21047568 0.0625
		 -0.53943157 0.10729952 0.0625 -0.54999959 -8.9406967e-008 0.0625 1.8626451e-007 -0.54999948 0.0625
		 0.10729976 -0.53943133 0.0625 0.21047586 -0.50813317 0.0625 0.30556351 -0.4573077 0.0625
		 0.38890851 -0.38890815 0.0625 0.45730793 -0.30556309 0.0625 0.50813329 -0.21047541 0.0625
		 0.53943133 -0.10729929 0.0625 0.64999998 0 0.0625 -3.7252903e-008 0.64999986 0.0625
		 -0.12680872 0.6375103 0.0625 -0.2487442 0.60052156 0.0625 -0.36112058 0.5404551 0.0625
		 -0.45961928 0.45961922 0.0625 -0.5404551 0.36112046 0.0625 -0.60052145 0.24874406 0.0625
		 -0.63751012 0.12680858 0.0625 -0.64999968 -6.7055225e-008 0.0625 8.1956387e-008 -0.64999962 0.0625
		 0.12680872 -0.63751006 0.0625 0.24874416 -0.60052133 0.0625 0.36112049 -0.54045486 0.0625
		 0.45961916 -0.45961908 0.0625 0.54045492 -0.36112034 0.0625 0.60052133 -0.24874398 0.0625
		 0.63751 -0.12680852 0.0625 0.64999998 0 -0.0625 -3.7252903e-008 0.64999986 -0.0625
		 -0.12680872 0.6375103 -0.0625 -0.2487442 0.60052156 -0.0625 -0.36112058 0.5404551 -0.0625
		 -0.45961928 0.45961922 -0.0625 -0.5404551 0.36112046 -0.0625 -0.60052145 0.24874406 -0.0625
		 -0.63751012 0.12680858 -0.0625 -0.64999968 -6.7055225e-008 -0.0625 8.1956387e-008 -0.64999962 -0.0625
		 0.12680872 -0.63751006 -0.0625 0.24874416 -0.60052133 -0.0625 0.36112049 -0.54045486 -0.0625
		 0.45961916 -0.45961908 -0.0625 0.54045492 -0.36112034 -0.0625 0.60052133 -0.24874398 -0.0625
		 0.63751 -0.12680852 -0.0625;
	setAttr -s 136 ".ed[0:135]"  1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0
		 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 0 0 19 20 0 20 21 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0
		 33 34 0 34 35 0 35 18 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0
		 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 36 0 55 56 0 56 57 0 57 58 0
		 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0
		 70 71 0 71 54 0 0 18 0 1 19 0 2 20 1 3 21 1 4 22 1 5 23 1 6 24 1 7 25 1 8 26 1 9 27 0
		 10 28 0 11 29 1 12 30 1 13 31 1 14 32 1 15 33 1 16 34 1 17 35 1 18 36 0 19 37 0 20 38 1
		 21 39 1 22 40 1 23 41 1 24 42 1 25 43 1 26 44 1 27 45 0 28 46 0 29 47 1 30 48 1 31 49 1
		 32 50 1 33 51 1 34 52 1 35 53 1 36 54 0 37 55 0 38 56 1 39 57 1 40 58 1 41 59 1 42 60 1
		 43 61 1 44 62 1 45 63 0 46 64 0 47 65 1 48 66 1 49 67 1 50 68 1 51 69 1 52 70 1 53 71 1
		 54 0 0 55 1 0 56 2 1 57 3 1 58 4 1 59 5 1 60 6 1 61 7 1 62 8 1 63 9 0 64 10 0 65 11 1
		 66 12 1 67 13 1 68 14 1 69 15 1 70 16 1 71 17 1;
	setAttr -s 68 -ch 272 ".fc[0:67]" -type "polyFaces" 
		f 4 -1 65 16 -67
		mu 0 4 0 1 2 3
		f 4 -2 66 17 -68
		mu 0 4 4 0 3 5
		f 4 -3 67 18 -69
		mu 0 4 6 4 5 7
		f 4 -4 68 19 -70
		mu 0 4 8 6 7 9
		f 4 -5 69 20 -71
		mu 0 4 10 8 9 11
		f 4 -6 70 21 -72
		mu 0 4 12 10 11 13
		f 4 -7 71 22 -73
		mu 0 4 14 12 13 15
		f 4 -8 72 23 -74
		mu 0 4 16 14 15 17
		f 4 -9 74 24 -76
		mu 0 4 18 19 20 21
		f 4 -10 75 25 -77
		mu 0 4 22 18 21 23
		f 4 -11 76 26 -78
		mu 0 4 24 22 23 25
		f 4 -12 77 27 -79
		mu 0 4 26 24 25 27
		f 4 -13 78 28 -80
		mu 0 4 28 26 27 29
		f 4 -14 79 29 -81
		mu 0 4 30 28 29 31
		f 4 -15 80 30 -82
		mu 0 4 32 30 31 33
		f 4 -16 81 31 -65
		mu 0 4 34 32 33 35
		f 4 -17 83 32 -85
		mu 0 4 3 2 36 37
		f 4 -18 84 33 -86
		mu 0 4 5 3 37 38
		f 4 -19 85 34 -87
		mu 0 4 7 5 38 39
		f 4 -20 86 35 -88
		mu 0 4 9 7 39 40
		f 4 -21 87 36 -89
		mu 0 4 11 9 40 41
		f 4 -22 88 37 -90
		mu 0 4 13 11 41 42
		f 4 -23 89 38 -91
		mu 0 4 15 13 42 43
		f 4 -24 90 39 -92
		mu 0 4 17 15 43 44
		f 4 -25 92 40 -94
		mu 0 4 21 20 45 46
		f 4 -26 93 41 -95
		mu 0 4 23 21 46 47
		f 4 -27 94 42 -96
		mu 0 4 25 23 47 48
		f 4 -28 95 43 -97
		mu 0 4 27 25 48 49
		f 4 -29 96 44 -98
		mu 0 4 29 27 49 50
		f 4 -30 97 45 -99
		mu 0 4 31 29 50 51
		f 4 -31 98 46 -100
		mu 0 4 33 31 51 52
		f 4 -32 99 47 -83
		mu 0 4 35 33 52 53
		f 4 -33 101 48 -103
		mu 0 4 37 36 54 55
		f 4 -34 102 49 -104
		mu 0 4 38 37 55 56
		f 4 -35 103 50 -105
		mu 0 4 39 38 56 57
		f 4 -36 104 51 -106
		mu 0 4 40 39 57 58
		f 4 -37 105 52 -107
		mu 0 4 41 40 58 59
		f 4 -38 106 53 -108
		mu 0 4 42 41 59 60
		f 4 -39 107 54 -109
		mu 0 4 43 42 60 61
		f 4 -40 108 55 -110
		mu 0 4 44 43 61 62
		f 4 -41 110 56 -112
		mu 0 4 46 45 63 64
		f 4 -42 111 57 -113
		mu 0 4 47 46 64 65
		f 4 -43 112 58 -114
		mu 0 4 48 47 65 66
		f 4 -44 113 59 -115
		mu 0 4 49 48 66 67
		f 4 -45 114 60 -116
		mu 0 4 50 49 67 68
		f 4 -46 115 61 -117
		mu 0 4 51 50 68 69
		f 4 -47 116 62 -118
		mu 0 4 52 51 69 70
		f 4 -48 117 63 -101
		mu 0 4 53 52 70 71
		f 4 -49 119 0 -121
		mu 0 4 55 54 1 0
		f 4 -50 120 1 -122
		mu 0 4 56 55 0 4
		f 4 -51 121 2 -123
		mu 0 4 57 56 4 6
		f 4 -52 122 3 -124
		mu 0 4 58 57 6 8
		f 4 -53 123 4 -125
		mu 0 4 59 58 8 10
		f 4 -54 124 5 -126
		mu 0 4 60 59 10 12
		f 4 -55 125 6 -127
		mu 0 4 61 60 12 14
		f 4 -56 126 7 -128
		mu 0 4 62 61 14 16
		f 4 -57 128 8 -130
		mu 0 4 64 63 19 18
		f 4 -58 129 9 -131
		mu 0 4 65 64 18 22
		f 4 -59 130 10 -132
		mu 0 4 66 65 22 24
		f 4 -60 131 11 -133
		mu 0 4 67 66 24 26
		f 4 -61 132 12 -134
		mu 0 4 68 67 26 28
		f 4 -62 133 13 -135
		mu 0 4 69 68 28 30
		f 4 -63 134 14 -136
		mu 0 4 70 69 30 32
		f 4 -64 135 15 -119
		mu 0 4 71 70 32 34
		f 4 82 100 118 64
		mu 0 4 35 53 71 34
		f 4 -93 -75 -129 -111
		mu 0 4 45 20 19 63
		f 4 109 127 73 91
		mu 0 4 44 62 16 17
		f 4 -84 -66 -120 -102
		mu 0 4 36 2 1 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "M_white";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".ic" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo1";
createNode lambert -n "M_item";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 100 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "itemCoreShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "itemCoreShape.iog.og[0].gco";
connectAttr "groupId3.id" "itemCoreShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "itemCoreShape.iog.og[1].gco";
connectAttr "groupId2.id" "itemCoreShape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "M_white.oc" "lambert2SG.ss";
connectAttr "itemRotatorShape.iog" "lambert2SG.dsm" -na;
connectAttr "itemCoreShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "itemCoreShape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "M_white.msg" "materialInfo1.m";
connectAttr "M_item.oc" "lambert3SG.ss";
connectAttr "groupId3.msg" "lambert3SG.gn" -na;
connectAttr "itemCoreShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "M_item.msg" "materialInfo2.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "M_white.msg" ":defaultShaderList1.s" -na;
connectAttr "M_item.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of item_001.ma
