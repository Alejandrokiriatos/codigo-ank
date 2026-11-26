.class public final enum Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

.field public static final enum AES:Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

.field public static final enum RSA:Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    const-string v1, "AES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;->AES:Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    new-instance v1, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    const-string v2, "RSA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;->RSA:Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    filled-new-array {v0, v1}, [Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;->$VALUES:[Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;
    .locals 1

    const-class v0, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;->$VALUES:[Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;

    return-object v0
.end method
