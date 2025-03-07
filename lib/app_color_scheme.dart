import 'package:flutter/material.dart';

abstract class AppColorScheme{
  AppColorScheme();
  Color get primary;
  Color get onPrimary;
  Color get primaryContainer;
  Color get onPrimaryContainer;
  Color get primaryFixed;
  Color get primaryFixedDim;
  Color get onPrimaryFixed;

  Color get secondary;
  Color get onSecondary;
  Color get secondaryContainer;
  Color get onSecondaryContainer;
  Color get secondaryFixed;
  Color get secondaryFixedDim;
  Color get onSecondaryFixed;

  Color get tertiary;
  Color get onTertiary;
  Color get tertiaryContainer;
  Color get onTertiaryContainer;
  Color get tertiaryFixed;
  Color get tertiaryFixedDim;
  Color get onTertiaryFixed;


  Color get error => const Color(0xffCD2F26);
  Color get onError => const Color(0xff561E18);
  Color get errorContainer;
  Color get onErrorContainer;


  Color get surface;
  Color get onSurface;
  Color get surfaceBright;
  Color get onSurfaceBright;
  Color get surfaceContainer;
  Color get surfaceContainerHighest;

  Color get onSurfaceVariant;

  Color get outlineVariant;

  Color get yellow => const Color(0xffFF9500);
  Color get onYellow;
  Color get yellowContainer;
  Color get onYellowContainer;

  Color get green => const Color(0xff1DB034);
  Color get onGreen;
  Color get greenContainer;
  Color get onGreenContainer;

  Color get blue => const Color(0xff007AFF);
  Color get onBlue;
  Color get blueContainer;
  Color get onBlueContainer;

  ColorScheme getColorScheme();
}

class LightAppColorScheme extends AppColorScheme {

  LightAppColorScheme();


  @override
  Color get onPrimary => const Color(0xffFFFFFF);

  @override
  Color get onPrimaryContainer => const Color(0xff1D0061);

  @override
  Color get onPrimaryFixed => const Color(0xff1D0061);

  @override
  Color get onSecondary => const Color(0xffFFFFFF);

  @override
  Color get onSecondaryContainer => const Color(0xff131F00);

  @override
  Color get onSecondaryFixed => const Color(0xff131F00);

  @override
  Color get onSurface => const Color(0xff1C1B20);

  @override
  Color get onSurfaceVariant => const Color(0xffADAAAA);

  @override
  Color get onTertiary => const Color(0xffFFFFFF);

  @override
  Color get onTertiaryContainer => const Color(0xffADAAAA);

  @override
  Color get onTertiaryFixed => const Color(0xff313030);

  @override
  Color get outlineVariant => const Color(0xffBFC8CA);

  @override
  Color get primary => const Color(0xff6145D5);

  @override
  Color get primaryContainer => const Color(0xffE6DEFF);

  @override
  Color get primaryFixed => const Color(0xffE6DEFF);

  @override
  Color get primaryFixedDim => const Color(0xffCBBEFF);

  @override
  Color get secondary => const Color(0xff476800);

  @override
  Color get secondaryContainer => const Color(0xffCEEE98);

  @override
  Color get secondaryFixed => const Color(0xffCEEE98);

  @override
  Color get secondaryFixedDim => const Color(0xff99DA00);

  @override
  Color get surface => const Color(0xffF6F6F7);

  @override
  Color get surfaceBright => const Color(0xffFFFFFF);

  @override
  Color get onSurfaceBright => const Color(0xff171D1E);

  @override
  Color get surfaceContainer => const Color(0xffE9E9E9);

  @override
  Color get surfaceContainerHighest => const Color(0xffE1E2EC);

  @override
  Color get tertiary => const Color(0xff605E5E);

  @override
  Color get tertiaryContainer => const Color(0xffC9C6C5);

  @override
  Color get tertiaryFixed => const Color(0xff929090);

  @override
  Color get tertiaryFixedDim => const Color(0xffE5E2E1);

  @override
  Color get errorContainer => const Color(0xffFFDAD5);

  @override
  Color get onErrorContainer => const Color(0xff3B0906);

  @override
  Color get yellowContainer => const Color(0xffFFF4E5);

  @override
  Color get onYellowContainer=> const Color(0xff2D1600);

  @override
  Color get onYellow => const Color(0xffFFFFFF);

  @override
  Color get greenContainer => const Color(0xffCBEED1);

  @override
  Color get onGreen => const Color(0xffFFFFFF);

  @override
  Color get onGreenContainer => const Color(0xff002203);

  @override
  Color get blueContainer => const Color(0xffD8E2FF);

  @override
  Color get onBlue => const Color(0xffFFFFFF);

  @override
  Color get onBlueContainer => const Color(0xff001A41);

  @override
  ColorScheme getColorScheme() {
    return ColorScheme.light(
      primary:primary,
      onPrimary:onPrimary,
      primaryContainer:primaryContainer,
      onPrimaryContainer:onPrimaryContainer,
      primaryFixed:primaryFixed,
      primaryFixedDim:primaryFixedDim,
      onPrimaryFixed:onPrimaryFixed,
      secondary:secondary,
      onSecondary:onSecondary,
      secondaryContainer:secondaryContainer,
      onSecondaryContainer:onSecondaryContainer,
      secondaryFixed:secondaryFixed,
      secondaryFixedDim:secondaryFixedDim,
      onSecondaryFixed:onSecondaryFixed,
      tertiary:tertiary,
      onTertiary:onTertiary,
      tertiaryContainer:tertiaryContainer,
      onTertiaryContainer:onTertiaryContainer,
      tertiaryFixed:tertiaryFixed,
      tertiaryFixedDim:tertiaryFixedDim,
      onTertiaryFixed:onTertiaryFixed,
      surface:surface,
      onSurface:onSurface,
      surfaceBright:surfaceBright,
      surfaceContainer:surfaceContainer,
      surfaceContainerHighest:surfaceContainerHighest,
      onSurfaceVariant:onSurfaceVariant,
      outlineVariant:outlineVariant,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
    );
  }
}

class DarkAppColorScheme extends AppColorScheme {

  DarkAppColorScheme();


  @override
  Color get primary => const Color(0xffCABEFF);

  @override
  Color get primaryFixedDim => const Color(0xffCBBEFF);

  @override
  Color get primaryContainer => const Color(0xff483F77);

  @override
  Color get primaryFixed => const Color(0xffE6DEFF);

  @override
  Color get onPrimary => const Color(0xff330099);

  @override
  Color get onPrimaryContainer => const Color(0xffE6DEFF);

  @override
  Color get onPrimaryFixed => const Color(0xff1D0061);

  @override
  Color get onSecondary => const Color(0xff233600);

  @override
  Color get secondary => const Color(0xffB5D086);

  @override
  Color get secondaryContainer => const Color(0xff384D12);

  @override
  Color get onSecondaryContainer => const Color(0xffD1ECA0);

  @override
  Color get secondaryFixed => const Color(0xffCEEE98);

  @override
  Color get secondaryFixedDim => const Color(0xff99DA00);

  @override
  Color get onSecondaryFixed => const Color(0xff131F00);

  @override
  Color get onTertiary => const Color(0xff313030);

  @override
  Color get onTertiaryContainer => const Color(0xff797776);

  @override
  Color get onTertiaryFixed => const Color(0xff929090);

  @override
  Color get tertiary => const Color(0xffC9C6C5);

  @override
  Color get tertiaryContainer => const Color(0xff3C3B3B);

  @override
  Color get tertiaryFixed => const Color(0xffADAAAA);

  @override
  Color get tertiaryFixedDim => const Color(0xff3C3B3B);

  @override
  Color get onSurface => const Color(0xffE6E1E9);

  @override
  Color get onSurfaceBright => const Color(0xffDEE3E5);

  @override
  Color get onSurfaceVariant => const Color(0xffBFC8CA);

  @override
  Color get outlineVariant => const Color(0xff3F484A);

  @override
  Color get surface => const Color(0xff0E1415);

  @override
  Color get surfaceBright => const Color(0xff171D1E);

  @override
  Color get surfaceContainer => const Color(0xff343A3B);

  @override
  Color get surfaceContainerHighest => const Color(0xff3F484A);

  @override
  Color get errorContainer => const Color(0xff2D0001);

  @override
  Color get onErrorContainer => const Color(0xffFFDAD5);

  @override
  Color get yellowContainer => const Color(0xff1A0F00);

  @override
  Color get onYellowContainer=> const Color(0xffFFDCBF);

  @override
  Color get onYellow => const Color(0xff4B2800);

  @override
  Color get greenContainer => const Color(0xff041A07);

  @override
  Color get onGreen => const Color(0xff0B390F);

  @override
  Color get onGreenContainer => const Color(0xffBDF0B3);

  @override
  Color get blueContainer => const Color(0xff2B4678);

  @override
  Color get onBlue => const Color(0xff102F60);

  @override
  Color get onBlueContainer => const Color(0xffD8E2FF);

  @override
  ColorScheme getColorScheme() {
    return ColorScheme.dark(
      primary:primary,
      onPrimary:onPrimary,
      primaryContainer:primaryContainer,
      onPrimaryContainer:onPrimaryContainer,
      primaryFixed:primaryFixed,
      primaryFixedDim:primaryFixedDim,
      onPrimaryFixed:onPrimaryFixed,
      secondary:secondary,
      onSecondary:onSecondary,
      secondaryContainer:secondaryContainer,
      onSecondaryContainer:onSecondaryContainer,
      secondaryFixed:secondaryFixed,
      secondaryFixedDim:secondaryFixedDim,
      onSecondaryFixed:onSecondaryFixed,
      tertiary:tertiary,
      onTertiary:onTertiary,
      tertiaryContainer:tertiaryContainer,
      onTertiaryContainer:onTertiaryContainer,
      tertiaryFixed:tertiaryFixed,
      tertiaryFixedDim:tertiaryFixedDim,
      onTertiaryFixed:onTertiaryFixed,
      surface:surface,
      onSurface:onSurface,
      surfaceBright:surfaceBright,
      surfaceContainer:surfaceContainer,
      surfaceContainerHighest:surfaceContainerHighest,
      onSurfaceVariant:onSurfaceVariant,
      outlineVariant:outlineVariant,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
    );
  }
}