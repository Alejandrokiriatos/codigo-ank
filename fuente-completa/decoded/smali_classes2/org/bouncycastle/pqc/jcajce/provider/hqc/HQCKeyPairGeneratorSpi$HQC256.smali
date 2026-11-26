.class public Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyPairGeneratorSpi$HQC256;
.super Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HQC256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/HQCParameterSpec;->hqc256:Lorg/bouncycastle/pqc/jcajce/spec/HQCParameterSpec;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/jcajce/spec/HQCParameterSpec;)V

    return-void
.end method
