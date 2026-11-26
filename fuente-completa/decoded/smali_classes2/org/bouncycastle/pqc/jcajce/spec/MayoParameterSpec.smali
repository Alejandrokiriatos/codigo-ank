.class public Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final mayo1:Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

.field public static final mayo2:Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

.field public static final mayo3:Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

.field public static final mayo5:Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo1:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->mayo1:Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo2:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->mayo2:Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo3:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;)V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->mayo3:Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo5:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;)V

    sput-object v3, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->mayo5:Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->parameters:Ljava/util/Map;

    const-string v5, "MAYO_1"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->parameters:Ljava/util/Map;

    const-string v4, "MAYO_2"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "MAYO_3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "MAYO_5"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/MayoParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
