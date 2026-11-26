.class public Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;->sr:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;->internalGenerateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object p1

    return-object p1
.end method

.method public internalGenerateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 2

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->kemEncrypt(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;[B)[[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object p2
.end method
