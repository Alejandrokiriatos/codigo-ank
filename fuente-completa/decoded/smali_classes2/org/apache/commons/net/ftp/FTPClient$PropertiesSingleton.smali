.class final Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;
.super Ljava/lang/Object;
.source "FTPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropertiesSingleton"
.end annotation


# static fields
.field static final PROPERTIES:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 379
    const-string v0, "/systemType.properties"

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPClient;->loadResourceProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;->PROPERTIES:Ljava/util/Properties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
