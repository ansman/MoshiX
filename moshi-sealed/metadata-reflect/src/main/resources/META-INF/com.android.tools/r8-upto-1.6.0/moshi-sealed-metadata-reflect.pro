# When editing this file, update the following files as well:
# - META-INF/com.android.tools/proguard/moshi-sealed-metadata-reflect.pro
# - META-INF/com.android.tools/r8-from-1.6.0/moshi-sealed-metadata-reflect.pro
# - META-INF/proguard/moshi-sealed-metadata-reflect.pro
# Keep Metadata annotations so they can be parsed at runtime.
-keep class kotlin.Metadata { *; }

# Keep moshi-sealed annotations for runtime use
-keep interface dev.zacsweers.moshix.sealed.annotations.DefaultNull { *; }
-keep interface dev.zacsweers.moshix.sealed.annotations.DefaultObject { *; }
-keep interface dev.zacsweers.moshix.sealed.annotations.TypeLabel { *; }

# Keep default constructor marker name for lookup in signatures.
-keepnames class kotlin.jvm.internal.DefaultConstructorMarker

# Keep implementations of service loaded interfaces
# R8 will automatically handle these these in 1.6+
-keep interface kotlinx.metadata.impl.extensions.MetadataExtensions
-keep class * implements kotlinx.metadata.impl.extensions.MetadataExtensions { public protected *; }
