.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# static fields
.field private static final MLKEM_CIPHERTEXT_SIZE:I = 0x440


# instance fields
.field private final key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

.field private final mlkemExtractor:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getKyberPrivateKey()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->mlkemExtractor:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x440

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    array-length v3, p1

    invoke-static {p1, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->computeSSX(Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->mlkemExtractor:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->extractSecret([B)[B

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->computeSharedSecret([B[B[B[B)[B

    move-result-object p1

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-object p1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->mlkemExtractor:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->getEncapsulationLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
