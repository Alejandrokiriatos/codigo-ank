.class public Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/Mayo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 14

    const-string v0, "KeyFactory.Mayo"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi$Mayo1;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi$Mayo1;-><init>()V

    const-string v4, "MAYO_1"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyFactorySpi$Mayo1"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    move-object v9, v3

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi$Mayo2;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi$Mayo2;-><init>()V

    const-string v10, "MAYO_2"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyFactorySpi$Mayo2"

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi$Mayo3;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi$Mayo3;-><init>()V

    const-string v10, "MAYO_3"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyFactorySpi$Mayo3"

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi$Mayo5;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi$Mayo5;-><init>()V

    const-string v10, "MAYO_5"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyFactorySpi$Mayo5"

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string p1, "KeyPairGenerator.Mayo"

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyPairGeneratorSpi"

    invoke-interface {v9, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyPairGeneratorSpi$Mayo1"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "MAYO_1"

    invoke-virtual {p0, v9, v1, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyPairGeneratorSpi$Mayo2"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MAYO_2"

    invoke-virtual {p0, v9, v2, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyPairGeneratorSpi$Mayo3"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "MAYO_3"

    invoke-virtual {p0, v9, v3, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.MayoKeyPairGeneratorSpi$Mayo5"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "MAYO_5"

    invoke-virtual {p0, v9, v4, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.SignatureSpi$Base"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "Mayo"

    invoke-virtual {p0, v9, v5, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.SignatureSpi$Mayo1"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v1, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.SignatureSpi$Mayo2"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v2, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.SignatureSpi$Mayo3"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v3, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p1, "org.bouncycastle.pqc.jcajce.provider.mayo.SignatureSpi$Mayo5"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v9, v4, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Mayo$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method
