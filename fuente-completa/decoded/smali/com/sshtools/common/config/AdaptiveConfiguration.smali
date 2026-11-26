.class public Lcom/sshtools/common/config/AdaptiveConfiguration;
.super Ljava/lang/Object;
.source "AdaptiveConfiguration.java"


# static fields
.field public static final CIPHERS:Ljava/lang/String; = "Ciphers"

.field public static final COMPRESSION:Ljava/lang/String; = "Compressions"

.field public static final DEFAULT:Lcom/sshtools/common/config/AdaptiveConfiguration;

.field public static final KEY_EXCHANGE:Ljava/lang/String; = "Kex"

.field public static final MACS:Ljava/lang/String; = "Macs"

.field public static final PUBLIC_KEYS:Ljava/lang/String; = "Publickeys"


# instance fields
.field private final configDir:Ljava/io/File;

.field private final configFile:Ljava/io/File;

.field private globalConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private patternConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lcom/sshtools/common/config/AdaptiveConfiguration;

    new-instance v1, Ljava/io/File;

    const-string v2, "maverick.configFile"

    const-string v3, "maverick.cfg"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "maverick.configDir"

    const-string v4, "conf.d"

    .line 63
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sshtools/common/config/AdaptiveConfiguration;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    sput-object v0, Lcom/sshtools/common/config/AdaptiveConfiguration;->DEFAULT:Lcom/sshtools/common/config/AdaptiveConfiguration;

    .line 65
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->resetConfiguration()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 67
    const-string v1, "Failed to initialize AdaptiveConfiguration"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, v0, v0, v1}, Lcom/sshtools/common/config/AdaptiveConfiguration;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/common/config/AdaptiveConfiguration;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/sshtools/common/config/AdaptiveConfiguration;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;Z)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->globalConfig:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    .line 84
    iput-object p1, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configFile:Ljava/io/File;

    .line 85
    iput-object p2, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configDir:Ljava/io/File;

    if-eqz p3, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->resetConfiguration()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_0
    return-void
.end method

.method private after(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 235
    invoke-direct {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->before(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not contain elements separated by whitespace"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private before(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 229
    aget-object p1, v0, p1

    return-object p1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not contain elements separated by whitespace"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getByteSizeOrDefault(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 471
    invoke-virtual {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 473
    invoke-static {p1}, Lcom/sshtools/common/util/IOUtils;->fromByteSize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 475
    :cond_0
    invoke-static {p2}, Lcom/sshtools/common/util/IOUtils;->fromByteSize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method private getIntOrDefault(Ljava/lang/String;I)I
    .locals 0

    .line 454
    invoke-virtual {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private getLongOrDefault(Ljava/lang/String;J)J
    .locals 0

    .line 438
    invoke-virtual {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 440
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 317
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "Matched {} from system property with value {}"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private loadConfigurationFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 124
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->loadConfiguration(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 123
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 4

    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "TRUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "YES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x59 -> :sswitch_2
        0x156c7 -> :sswitch_1
        0x276d8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public varargs createAlgorithmList(Lcom/sshtools/common/ssh/components/ComponentFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 271
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 p5, 0x1

    aput-object p4, v0, p5

    invoke-virtual {p0, p2, v0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getPatternConfig(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-array p5, v1, [Ljava/lang/String;

    invoke-virtual {p1, p4, p5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->filter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 273
    invoke-static {p4}, Lcom/sshtools/common/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 274
    invoke-virtual {p0, p2}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p4, v1, [Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->filter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 277
    :cond_0
    invoke-static {p4}, Lcom/sshtools/common/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 278
    invoke-virtual {p1, p3, p6}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p4
.end method

.method public varargs createAlgorithmList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 247
    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const/4 p5, 0x2

    .line 249
    new-array p5, p5, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, p5, v0

    const/4 v1, 0x1

    aput-object p4, p5, v1

    invoke-virtual {p0, p2, p5}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getPatternConfig(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 251
    invoke-static {p4}, Lcom/sshtools/common/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 252
    invoke-virtual {p0, p2}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 255
    :cond_0
    invoke-static {p4}, Lcom/sshtools/common/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 259
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    const-string p2, ","

    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    :goto_0
    if-ge v0, p4, :cond_3

    aget-object p5, p2, v0

    .line 261
    invoke-interface {p3, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_3
    invoke-static {p1}, Lcom/sshtools/common/util/Utils;->csv(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getBoolean(Ljava/lang/String;Z[Ljava/lang/String;)Z
    .locals 0

    .line 395
    invoke-virtual {p0, p1, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getPatternConfig(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getBooleanOrDefault(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 399
    :cond_0
    invoke-direct {p0, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBooleanOrDefault(Ljava/lang/String;Z)Z
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 424
    invoke-direct {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public varargs getByteSize(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getPatternConfig(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 465
    invoke-static {p3}, Lcom/sshtools/common/util/IOUtils;->fromByteSize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 467
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getByteSizeOrDefault(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->globalConfig:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 348
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const-string v1, "Matched {} from global configuration with value {}"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0

    .line 353
    :cond_1
    const-string v0, "maverick"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIdent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 373
    const-string v0, "SSH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 375
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 376
    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 377
    :cond_0
    array-length v1, v0

    if-le v1, v3, :cond_2

    .line 378
    aget-object p1, v0, v2

    const/16 v0, 0x20

    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    .line 381
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    .line 387
    :cond_2
    const-string v0, "Remote identification cannot be parsed to capture the remote nodes identity [{}]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    const-string p1, "<unknown>"

    return-object p1
.end method

.method public varargs getInt(Ljava/lang/String;I[Ljava/lang/String;)I
    .locals 0

    .line 446
    invoke-virtual {p0, p1, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getPatternConfig(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getIntOrDefault(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 450
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public varargs getLong(Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;)J
    .locals 0

    .line 430
    invoke-virtual {p0, p1, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getPatternConfig(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 432
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getLongOrDefault(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 434
    :cond_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public varargs getPatternConfig(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 285
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    .line 286
    invoke-static {v2}, Lcom/sshtools/common/util/Utils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    iget-object v3, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 289
    iget-object v5, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 291
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 292
    const-string p2, "Matched {} from pattern configuration {} [{}] with value {}"

    filled-new-array {p1, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v5

    .line 298
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->formatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getProperty(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 479
    invoke-virtual {p0, p1, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getPatternConfig(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    .line 483
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    return-object p1
.end method

.method public loadConfiguration(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 189
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "#"

    const-string v2, "match "

    if-eqz p1, :cond_3

    .line 190
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->before(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 198
    :cond_2
    invoke-static {v2}, Lcom/sshtools/common/util/Utils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->after(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p0, v2, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setGlobalConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 206
    invoke-direct {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->after(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 208
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 211
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-direct {p0, v3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->before(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lcom/sshtools/common/util/Utils;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    invoke-direct {p0, v3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->after(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {p0, p1, v4, v3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    :goto_3
    move-object p1, v3

    goto :goto_1

    .line 221
    :cond_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 222
    throw p1
.end method

.method public loadConfiguration(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/sshtools/common/util/IOUtils;->toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->loadConfiguration(Ljava/io/InputStream;)V

    return-void
.end method

.method public resetConfiguration()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->globalConfig:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    .line 100
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configFile:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->loadConfigurationFile(Ljava/io/File;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configDir:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configDir:Ljava/io/File;

    new-instance v1, Lcom/sshtools/common/config/AdaptiveConfiguration$1;

    invoke-direct {v1, p0}, Lcom/sshtools/common/config/AdaptiveConfiguration$1;-><init>(Lcom/sshtools/common/config/AdaptiveConfiguration;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    invoke-direct {p0, v3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->loadConfigurationFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public saveConfig()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configFile:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->configFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/sshtools/common/util/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot save configuration because there is no file set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveMatchingConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 130
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "LastKnownGoodConfiguration"

    invoke-virtual {p0, v2, v1, v0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getBoolean(Ljava/lang/String;Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "Kex"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string p2, "Publickeys"

    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string p2, "Ciphers"

    invoke-virtual {p0, p1, p2, p4}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string p2, "Macs"

    invoke-virtual {p0, p1, p2, p5}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string p2, "Compressions"

    invoke-virtual {p0, p1, p2, p6}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->saveConfig()V

    :cond_0
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 414
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 418
    invoke-virtual {p3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGlobalConfig(Ljava/lang/String;I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->globalConfig:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGlobalConfig(Ljava/lang/String;J)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->globalConfig:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGlobalConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->globalConfig:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGlobalConfig(Ljava/lang/String;Z)V
    .locals 0

    .line 369
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setGlobalConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPatternConfig(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 338
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPatternConfig(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 342
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPatternConfig(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 334
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/config/AdaptiveConfiguration;->setPatternConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 145
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 147
    iget-object v1, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->globalConfig:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->globalConfig:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    const-string v4, "Match "

    invoke-virtual {v0, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/sshtools/common/config/AdaptiveConfiguration;->patternConfigs:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 162
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 166
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
