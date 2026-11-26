.class public final enum Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
.super Ljava/lang/Enum;
.source "ExtendedPOP3Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/pop3/ExtendedPOP3Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUTH_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

.field public static final enum CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

.field public static final enum PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;


# instance fields
.field private final methodName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .locals 2

    .line 39
    sget-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    sget-object v1, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    filled-new-array {v0, v1}, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 45
    new-instance v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    const/4 v1, 0x1

    const-string v2, "CRAM-MD5"

    const-string v3, "CRAM_MD5"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    .line 39
    invoke-static {}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->$values()[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->methodName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    const-class v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    invoke-virtual {v0}, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;

    return-object v0
.end method


# virtual methods
.method public getAuthName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->methodName:Ljava/lang/String;

    return-object v0
.end method
