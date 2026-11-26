.class public Lorg/apache/cordova/buildinfo/BuildInfo;
.super Lorg/apache/cordova/CordovaPlugin;
.source "BuildInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BuildInfo"

.field private static mBuildInfoCache:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private static convertLongToDateTimeString(J)Ljava/lang/String;
    .locals 2

    .line 286
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getClassField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 277
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getClassFieldBoolean(Ljava/lang/Class;Ljava/lang/String;Z)Z
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    return p2
.end method

.method private static getClassFieldInt(Ljava/lang/Class;Ljava/lang/String;I)I
    .locals 0

    .line 232
    invoke-static {p0, p1}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    return p2
.end method

.method private static getClassFieldLong(Ljava/lang/Class;Ljava/lang/String;J)J
    .locals 0

    .line 254
    invoke-static {p0, p1}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    return-wide p2
.end method

.method private static getClassFieldString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 210
    invoke-static {p0, p1}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    return-object p2
.end method

.method private init(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 33

    move-object/from16 v1, p2

    .line 91
    const-string v2, "flavor"

    const-string v3, "buildType"

    const-string v4, "installDate"

    const-string v5, "debug"

    const-string v6, "versionCode"

    const-string v7, "version"

    const-string v8, "name"

    const-string v9, "displayName"

    const-string v10, "basePackageName"

    const-string v11, "packageName"

    const-string v12, ""

    const-string v13, "\""

    const-string v14, "BuildInfo"

    .line 0
    const-string v15, "installDate    : \""

    move-object/from16 v16, v15

    const-string v15, "flavor         : \""

    move-object/from16 v17, v15

    const-string v15, "buildType      : \""

    move-object/from16 v18, v15

    const-string v15, "debug          : "

    move-object/from16 v19, v15

    const-string v15, "versionCode    : "

    move-object/from16 v20, v15

    const-string v15, "version        : \""

    move-object/from16 v21, v15

    const-string v15, "name           : \""

    move-object/from16 v22, v15

    const-string v15, "displayName    : \""

    move-object/from16 v23, v15

    const-string v15, "basePackageName: \""

    move-object/from16 v24, v15

    const-string v15, "packageName    : \""

    .line 91
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    move-object/from16 v25, v14

    move-object/from16 v14, p0

    .line 97
    iget-object v0, v14, Lorg/apache/cordova/buildinfo/BuildInfo;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v26

    .line 98
    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 103
    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v27, v13

    const/4 v13, 0x1

    const-wide/16 v28, 0x0

    .line 106
    :try_start_0
    invoke-virtual {v0, v14, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    .line 107
    :try_start_1
    iget-wide v2, v13, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v28, v2

    .line 109
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    .line 113
    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    move-object v0, v12

    :goto_1
    move-wide/from16 v2, v28

    .line 119
    const-string v13, ".BuildConfig"

    move-wide/from16 v28, v2

    if-nez p1, :cond_2

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object/from16 v2, p1

    .line 124
    :goto_2
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_3

    .line 129
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v32, v3

    move-object v3, v2

    move-object/from16 v2, v32

    goto :goto_4

    :catch_3
    move-exception v0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BuildConfig ClassNotFoundException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v3, v14

    .line 141
    :goto_4
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    sput-object v13, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    .line 143
    :try_start_4
    const-string v13, "DEBUG"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v1, 0x0

    :try_start_5
    invoke-static {v2, v13, v1}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassFieldBoolean(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v13

    .line 145
    sget-object v1, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v1, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    sget-object v1, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v1, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    sget-object v1, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    sget-object v1, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    const-string v1, "VERSION_NAME"

    invoke-static {v2, v1, v12}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassFieldString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    const-string v1, "VERSION_CODE"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassFieldInt(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 153
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-static/range {v28 .. v29}, Lorg/apache/cordova/buildinfo/BuildInfo;->convertLongToDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    const-string v1, "BUILD_TYPE"

    invoke-static {v2, v1, v12}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassFieldString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v31

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    const-string v1, "FLAVOR"

    invoke-static {v2, v1, v12}, Lorg/apache/cordova/buildinfo/BuildInfo;->getClassFieldString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v30

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v13, :cond_5

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v25

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v12, v24

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v10, v23

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v9, v22

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v8, v21

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "true"

    goto :goto_5

    :cond_4
    const-string v0, "false"

    :goto_5
    move-object/from16 v5, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 176
    :cond_5
    sget-object v0, Lorg/apache/cordova/buildinfo/BuildInfo;->mBuildInfoCache:Lorg/json/JSONObject;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void

    :catch_4
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_6

    :catch_5
    move-exception v0

    .line 171
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    const-string v0, "init"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x1

    if-ge v1, p1, :cond_0

    .line 74
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 77
    :goto_0
    invoke-direct {p0, p1, p3}, Lorg/apache/cordova/buildinfo/BuildInfo;->init(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_1
    return v0
.end method
