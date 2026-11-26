.class Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;
.super Ljava/lang/Object;


# static fields
.field private static parameters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_512:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_512:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_768:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_1024:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_1024:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getParameters(Ljava/lang/String;)Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->parameters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    return-object p0
.end method
