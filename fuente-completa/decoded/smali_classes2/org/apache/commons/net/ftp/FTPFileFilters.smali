.class public Lorg/apache/commons/net/ftp/FTPFileFilters;
.super Ljava/lang/Object;
.source "FTPFileFilters.java"


# static fields
.field public static final ALL:Lorg/apache/commons/net/ftp/FTPFileFilter;

.field public static final DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

.field public static final NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;


# direct methods
.method public static synthetic $r8$lambda$fbLHgrpXpYQ394CnWKDJc-Cae4U(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFileFilters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFileFilters$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->ALL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    .line 37
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFileFilters$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFileFilters$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    .line 42
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFileFilters$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFileFilters$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$static$1(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
