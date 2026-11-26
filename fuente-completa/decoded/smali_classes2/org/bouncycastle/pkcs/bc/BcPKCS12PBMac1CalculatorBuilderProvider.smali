.class public Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilderProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilderProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilderProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilderProvider$1;-><init>(Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilderProvider;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-object v0
.end method
