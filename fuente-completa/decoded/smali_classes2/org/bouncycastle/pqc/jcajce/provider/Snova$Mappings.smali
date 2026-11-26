.class public Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/Snova;
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
    .locals 27

    move-object/from16 v1, p1

    const-string v0, "KeyFactory.Snova"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi"

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_4_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_4_SSK;-><init>()V

    const-string v2, "SNOVA_24_5_4_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_24_5_4_SSK"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_4_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_4_ESK;-><init>()V

    const-string v2, "SNOVA_24_5_4_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_24_5_4_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_4_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_4_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_24_5_4_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_24_5_4_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_4_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_4_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_24_5_4_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_24_5_4_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_5_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_5_SSK;-><init>()V

    const-string v2, "SNOVA_24_5_5_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_24_5_5_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_5_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_5_ESK;-><init>()V

    const-string v2, "SNOVA_24_5_5_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_24_5_5_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_5_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_5_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_24_5_5_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_24_5_5_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_5_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_24_5_5_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_24_5_5_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_24_5_5_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_25_8_3_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_25_8_3_SSK;-><init>()V

    const-string v2, "SNOVA_25_8_3_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_25_8_3_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_25_8_3_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_25_8_3_ESK;-><init>()V

    const-string v2, "SNOVA_25_8_3_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_25_8_3_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_25_8_3_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_25_8_3_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_25_8_3_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_25_8_3_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_25_8_3_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_25_8_3_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_25_8_3_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_25_8_3_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_29_6_5_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_29_6_5_SSK;-><init>()V

    const-string v2, "SNOVA_29_6_5_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_29_6_5_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_29_6_5_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_29_6_5_ESK;-><init>()V

    const-string v2, "SNOVA_29_6_5_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_29_6_5_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_29_6_5_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_29_6_5_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_29_6_5_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_29_6_5_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_29_6_5_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_29_6_5_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_29_6_5_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_29_6_5_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_8_4_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_8_4_SSK;-><init>()V

    const-string v2, "SNOVA_37_8_4_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_37_8_4_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_8_4_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_8_4_ESK;-><init>()V

    const-string v2, "SNOVA_37_8_4_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_37_8_4_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_8_4_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_8_4_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_37_8_4_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_37_8_4_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_8_4_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_8_4_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_37_8_4_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_37_8_4_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_17_2_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_17_2_SSK;-><init>()V

    const-string v2, "SNOVA_37_17_2_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_37_17_2_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_17_2_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_17_2_ESK;-><init>()V

    const-string v2, "SNOVA_37_17_2_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_37_17_2_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_17_2_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_17_2_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_37_17_2_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_37_17_2_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_17_2_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_37_17_2_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_37_17_2_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_37_17_2_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_49_11_3_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_49_11_3_SSK;-><init>()V

    const-string v2, "SNOVA_49_11_3_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_49_11_3_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_49_11_3_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_49_11_3_ESK;-><init>()V

    const-string v2, "SNOVA_49_11_3_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_49_11_3_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_49_11_3_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_49_11_3_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_49_11_3_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_49_11_3_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_49_11_3_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_49_11_3_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_49_11_3_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_49_11_3_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_56_25_2_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_56_25_2_SSK;-><init>()V

    const-string v2, "SNOVA_56_25_2_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_56_25_2_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_56_25_2_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_56_25_2_ESK;-><init>()V

    const-string v2, "SNOVA_56_25_2_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_56_25_2_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_56_25_2_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_56_25_2_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_56_25_2_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_56_25_2_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_56_25_2_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_56_25_2_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_56_25_2_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_56_25_2_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_60_10_4_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_60_10_4_SSK;-><init>()V

    const-string v2, "SNOVA_60_10_4_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_60_10_4_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_60_10_4_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_60_10_4_ESK;-><init>()V

    const-string v2, "SNOVA_60_10_4_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_60_10_4_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_60_10_4_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_60_10_4_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_60_10_4_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_60_10_4_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_60_10_4_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_60_10_4_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_60_10_4_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_60_10_4_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_66_15_3_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_66_15_3_SSK;-><init>()V

    const-string v2, "SNOVA_66_15_3_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_66_15_3_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_66_15_3_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_66_15_3_ESK;-><init>()V

    const-string v2, "SNOVA_66_15_3_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_66_15_3_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_66_15_3_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_66_15_3_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_66_15_3_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_66_15_3_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_66_15_3_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_66_15_3_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_66_15_3_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_66_15_3_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_75_33_2_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_75_33_2_SSK;-><init>()V

    const-string v2, "SNOVA_75_33_2_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_75_33_2_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_75_33_2_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_75_33_2_ESK;-><init>()V

    const-string v2, "SNOVA_75_33_2_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_75_33_2_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_75_33_2_SHAKE_SSK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_75_33_2_SHAKE_SSK;-><init>()V

    const-string v2, "SNOVA_75_33_2_SHAKE_SSK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_75_33_2_SHAKE_SSK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v4, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_75_33_2_SHAKE_ESK;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyFactorySpi$SNOVA_75_33_2_SHAKE_ESK;-><init>()V

    const-string v2, "SNOVA_75_33_2_SHAKE_ESK"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi$SNOVA_75_33_2_SHAKE_ESK"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    const-string v2, "KeyPairGenerator.Snova"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi"

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_24_5_4_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_24_5_4_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_24_5_4_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "SNOVA_24_5_4_ESK"

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_24_5_4_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "SNOVA_24_5_4_SHAKE_SSK"

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_24_5_4_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SNOVA_24_5_4_SHAKE_ESK"

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_24_5_5_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SNOVA_24_5_5_SSK"

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_24_5_5_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SNOVA_24_5_5_ESK"

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_24_5_5_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SNOVA_24_5_5_SHAKE_SSK"

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_24_5_5_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "SNOVA_24_5_5_SHAKE_ESK"

    invoke-virtual {v0, v1, v11, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_25_8_3_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "SNOVA_25_8_3_SSK"

    invoke-virtual {v0, v1, v12, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_25_8_3_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "SNOVA_25_8_3_ESK"

    invoke-virtual {v0, v1, v13, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_25_8_3_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "SNOVA_25_8_3_SHAKE_SSK"

    invoke-virtual {v0, v1, v14, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_25_8_3_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_25_8_3_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_29_6_5_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v15

    const-string v15, "SNOVA_29_6_5_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_29_6_5_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v15

    const-string v15, "SNOVA_29_6_5_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_29_6_5_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v15

    const-string v15, "SNOVA_29_6_5_SHAKE_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_29_6_5_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v15

    const-string v15, "SNOVA_29_6_5_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_37_8_4_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v15

    const-string v15, "SNOVA_37_8_4_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_37_8_4_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v15

    const-string v15, "SNOVA_37_8_4_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_37_8_4_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v15

    const-string v15, "SNOVA_37_8_4_SHAKE_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_37_8_4_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v15

    const-string v15, "SNOVA_37_8_4_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_37_17_2_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v15

    const-string v15, "SNOVA_37_17_2_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_37_17_2_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v25, v15

    const-string v15, "SNOVA_37_17_2_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_37_17_2_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v15

    const-string v15, "SNOVA_37_17_2_SHAKE_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_37_17_2_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_37_17_2_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_49_11_3_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_49_11_3_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_49_11_3_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_49_11_3_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_49_11_3_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_49_11_3_SHAKE_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_49_11_3_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_49_11_3_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_56_25_2_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_56_25_2_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_56_25_2_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_56_25_2_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_56_25_2_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_56_25_2_SHAKE_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_56_25_2_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_56_25_2_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_60_10_4_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_60_10_4_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_60_10_4_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_60_10_4_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_60_10_4_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_60_10_4_SHAKE_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_60_10_4_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_60_10_4_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_66_15_3_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_66_15_3_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_66_15_3_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_66_15_3_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_66_15_3_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_66_15_3_SHAKE_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_66_15_3_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_66_15_3_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_75_33_2_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_75_33_2_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_75_33_2_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_75_33_2_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_75_33_2_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_75_33_2_SHAKE_SSK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyPairGeneratorSpi$SNOVA_75_33_2_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "SNOVA_75_33_2_SHAKE_ESK"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$Base"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "Snova"

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_24_5_4_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_24_5_4_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_24_5_4_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_24_5_4_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_24_5_5_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_24_5_5_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_24_5_5_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v10, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_24_5_5_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v11, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_25_8_3_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v12, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_25_8_3_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v13, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_25_8_3_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v14, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_25_8_3_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_29_6_5_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_29_6_5_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_29_6_5_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_29_6_5_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_29_6_5_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_37_8_4_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_37_8_4_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_37_8_4_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_37_8_4_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_37_17_2_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_37_17_2_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_37_17_2_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_37_17_2_SHAKE_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_37_17_2_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_37_17_2_SHAKE_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_49_11_3_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_49_11_3_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_49_11_3_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_49_11_3_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_49_11_3_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_49_11_3_SHAKE_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_49_11_3_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_49_11_3_SHAKE_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_56_25_2_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_56_25_2_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_56_25_2_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_56_25_2_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_56_25_2_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_56_25_2_SHAKE_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_56_25_2_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_56_25_2_SHAKE_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_60_10_4_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_60_10_4_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_60_10_4_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_60_10_4_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_60_10_4_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_60_10_4_SHAKE_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_60_10_4_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_60_10_4_SHAKE_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_66_15_3_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_66_15_3_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_66_15_3_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_66_15_3_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_66_15_3_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_66_15_3_SHAKE_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_66_15_3_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_66_15_3_SHAKE_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_75_33_2_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_75_33_2_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_75_33_2_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_75_33_2_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_75_33_2_SHAKE_SSK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_75_33_2_SHAKE_SSK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.snova.SignatureSpi$SNOVA_75_33_2_SHAKE_ESK"

    sget-object v3, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SNOVA_75_33_2_SHAKE_ESK"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/Snova$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method
