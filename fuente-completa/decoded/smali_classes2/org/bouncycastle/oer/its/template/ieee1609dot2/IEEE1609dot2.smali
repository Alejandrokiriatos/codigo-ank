.class public Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;
.super Ljava/lang/Object;


# static fields
.field public static final AesCcmCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateBase:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateId:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ContributedExtensionBlock:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ContributedExtensionBlockSwitch:Lorg/bouncycastle/oer/Switch;

.field public static final ContributedExtensionBlocks:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CounterSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EncryptedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EncryptedDataEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EndEntityType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ExplicitCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HashedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HeaderInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HeaderInfoContributorId:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Ieee1609Dot2Content:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Ieee1609Dot2Data:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ImplicitCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final IssuerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final LinkageData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final MissingCrlIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Opaque:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PKRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PduFunctionalType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PreSharedKeyRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfPsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignedDataPayload:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SubjectPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SymmRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SymmetricCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final VerificationKeyIndicator:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field private static final etsiHeaderInfoContributorId:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static explicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final extensionBlockSwitchKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;

.field private static implicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->octets()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Opaque"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->Opaque:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xff

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v6, "PduFunctionalType"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->PduFunctionalType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v6, 0x20

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "sha256HashedData"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const/16 v8, 0x30

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "sha384HashedData"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v9, "reserved"

    invoke-virtual {v6, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "HashedData"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->HashedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId3:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "cracaId"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->CrlSeries:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "crlSeries"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v12

    filled-new-array {v7, v9, v12}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v9, "MissingCrlIdentifier"

    invoke-virtual {v7, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->MissingCrlIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v12, Lorg/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    invoke-direct {v9, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    sput-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->etsiHeaderInfoContributorId:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v12, 0x1

    new-array v13, v12, [Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v9, v13, v11

    sput-object v13, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->extensionBlockSwitchKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v4, "HeaderInfoContributorId"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    new-array v4, v12, [Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v9, v4, v11

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->HeaderInfoContributorId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-instance v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$1;

    invoke-direct {v4}, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$1;-><init>()V

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ContributedExtensionBlockSwitch:Lorg/bouncycastle/oer/Switch;

    const-string v9, "contributorId"

    invoke-virtual {v3, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->aSwitch(Lorg/bouncycastle/oer/Switch;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v9, "Extn"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v4, "ContributedExtensionBlock"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ContributedExtensionBlock:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-wide/16 v13, 0x1

    invoke-virtual {v3, v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v4, "ContributedExtensionBlocks"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ContributedExtensionBlocks:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "PreSharedKeyRecipientInfo"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->PreSharedKeyRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->EciesP256EncryptedKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v15, "eciesNistP256"

    invoke-virtual {v9, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    sget-object v15, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->EciesP256EncryptedKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-wide/from16 v16, v1

    const-string v1, "eciesBrainpoolP256r1"

    invoke-virtual {v15, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v2

    filled-new-array {v9, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "EncryptedDataEncryptionKey"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->EncryptedDataEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "recipientId"

    invoke-virtual {v2, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v15, "encKey"

    invoke-virtual {v1, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "PKRecipientInfo"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->PKRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    move-wide/from16 v18, v13

    const-string v13, "nonce"

    invoke-virtual {v2, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v13, "ccmCiphertext"

    invoke-virtual {v0, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    filled-new-array {v2, v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v13, "AesCcmCiphertext"

    invoke-virtual {v2, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->AesCcmCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "aes128ccm"

    invoke-virtual {v2, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v13

    filled-new-array {v2, v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v13, "SymmetricCiphertext"

    invoke-virtual {v2, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SymmetricCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v13, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v13, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    invoke-virtual {v2, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    filled-new-array {v9, v13}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v13, "SymmRecipientInfo"

    invoke-virtual {v9, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    sput-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SymmRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "pskRecipInfo"

    invoke-virtual {v4, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v13, "symmRecipInfo"

    invoke-virtual {v9, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v13, "certRecipInfo"

    invoke-virtual {v1, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    const-string v14, "signedDataRecipInfo"

    invoke-virtual {v1, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "rekRecipInfo"

    invoke-virtual {v1, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    filled-new-array {v4, v9, v13, v14, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v4, "RecipientInfo"

    invoke-virtual {v1, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->RecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v4, "SequenceOfRecipientInfo"

    invoke-virtual {v1, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SequenceOfRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "recipients"

    invoke-virtual {v1, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v4, "ciphertext"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "EncryptedData"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->EncryptedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-wide/16 v13, 0x8

    invoke-static {v13, v14}, Lorg/bouncycastle/oer/OERDefinition;->bitString(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    const/16 v9, 0x80

    invoke-direct {v4, v9}, Lorg/bouncycastle/asn1/DERBitString;-><init>(I)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v4, "EndEntityType"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->EndEntityType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfPsidSspRange:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "explicit"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    const-string v14, "all"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v14}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v14

    filled-new-array {v4, v13, v14}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v13, "SubjectPermissions"

    invoke-virtual {v4, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SubjectPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v13, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->PublicVerificationKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "verificationKey"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->EccP256CurvePoint:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v15, "reconstructionValue"

    invoke-virtual {v14, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v15}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v15

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    const-string v14, "VerificationKeyIndicator"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    sput-object v13, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->VerificationKeyIndicator:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "subjectPermissions"

    invoke-virtual {v4, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Lorg/bouncycastle/oer/OERDefinition;->integer(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "minChainLength"

    invoke-virtual {v14, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    invoke-static/range {v16 .. v17}, Lorg/bouncycastle/oer/OERDefinition;->integer(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    const-string v12, "chainLengthRange"

    invoke-virtual {v15, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    const-string v15, "eeType"

    invoke-virtual {v2, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    filled-new-array {v4, v14, v12, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v4, "PsidGroupPermissions"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->PsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v4, "SequenceOfPsidGroupPermissions"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SequenceOfPsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->IValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "iCert"

    invoke-virtual {v4, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sget-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->LinkageValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "linkageValue"

    invoke-virtual {v12, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    sget-object v14, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->GroupLinkageValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v15, "groupLinkageValue"

    invoke-virtual {v14, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v15}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v15

    filled-new-array {v4, v12, v14, v15}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v12, "LinkageData"

    invoke-virtual {v4, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->LinkageData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "linkageData"

    invoke-virtual {v4, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sget-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Hostname:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "name"

    invoke-virtual {v12, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    const/16 v14, 0x40

    const/4 v15, 0x1

    invoke-static {v15, v14}, Lorg/bouncycastle/oer/OERDefinition;->octets(II)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "binaryId"

    invoke-virtual {v14, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    move-object/from16 v17, v9

    const-string v9, "none"

    invoke-virtual {v15, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v15}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v15

    filled-new-array {v4, v12, v14, v9, v15}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v9, "CertificateId"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "id"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v18

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId3:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v4, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v19

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->CrlSeries:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v4, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v20

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->ValidityPeriod:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "validityPeriod"

    invoke-virtual {v4, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v21

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->GeographicRegion:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "region"

    invoke-virtual {v4, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v22

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SubjectAssurance:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "assuranceLevel"

    invoke-virtual {v4, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v23

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfPsidSsp:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "appPermissions"

    invoke-virtual {v4, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v24

    const-string v4, "certIssuePermissions"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v25

    const-string v4, "certRequestPermissions"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v26

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v4, "canRequestRollover"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v27

    sget-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->PublicEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "encryptionKey"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v28

    filled-new-array/range {v22 .. v28}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const-string v2, "verifyKeyIndicator"

    invoke-virtual {v13, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v23

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v24

    filled-new-array/range {v18 .. v24}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v8, "ToBeSignedCertificate"

    invoke-virtual {v2, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "sha256AndDigest"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashAlgorithm:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "self"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    sget-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "sha384AndDigest"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v12

    filled-new-array {v8, v9, v12}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "IssuerIdentifier"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sput-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->IssuerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v12, "implicit"

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v13

    filled-new-array {v9, v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v12, "CertificateType"

    invoke-virtual {v9, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    sput-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v13, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    sput-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->explicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v13, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    sput-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->implicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->UINT8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "version"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    const-string v13, "type"

    invoke-virtual {v9, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "issuer"

    invoke-virtual {v8, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v15, "toBeSigned"

    invoke-virtual {v2, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sget-object v15, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Signature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    move/from16 v17, v11

    const-string v11, "signature"

    invoke-virtual {v15, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    filled-new-array {v12, v14, v8, v2, v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v8, "CertificateBase"

    invoke-virtual {v2, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateBase:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v12, "Certificate"

    invoke-virtual {v8, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sput-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "ExplicitCertificate"

    invoke-virtual {v2, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    const/4 v15, 0x1

    new-array v14, v15, [Lorg/bouncycastle/asn1/ASN1Encodable;

    sget-object v16, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->explicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object v16, v14, v17

    invoke-virtual {v9, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    invoke-virtual {v12, v15, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->replaceChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    sput-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ExplicitCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "ImplicitCertificate"

    invoke-virtual {v2, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    new-array v12, v15, [Lorg/bouncycastle/asn1/ASN1Encodable;

    sget-object v14, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->implicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object v14, v12, v17

    invoke-virtual {v9, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    invoke-virtual {v2, v15, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->replaceChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ImplicitCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v9, "SequenceOfCertificate"

    invoke-virtual {v2, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SequenceOfCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "digest"

    invoke-virtual {v9, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v12, "certificate"

    invoke-virtual {v2, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    move/from16 v12, v17

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v12

    filled-new-array {v9, v2, v10, v12}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v9, "SignerIdentifier"

    invoke-virtual {v2, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SignerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Psid:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "psid"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time64:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "generationTime"

    invoke-virtual {v10, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v18

    sget-object v10, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time64:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "expiryTime"

    invoke-virtual {v10, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v19

    sget-object v10, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->ThreeDLocation:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "generationLocation"

    invoke-virtual {v10, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v20

    sget-object v10, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId3:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "p2pcdLearningRequest"

    invoke-virtual {v10, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v21

    const-string v10, "missingCrlIdentifier"

    invoke-virtual {v7, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v22

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->EncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v7, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v23

    filled-new-array/range {v18 .. v23}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfHashedId3:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "inlineP2pcdRequest"

    invoke-virtual {v7, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v10, "requestedCertificate"

    invoke-virtual {v8, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v10, "pduFunctionalType"

    invoke-virtual {v5, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v10, "contributedExtensions"

    invoke-virtual {v3, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    filled-new-array {v7, v8, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v3

    filled-new-array {v9, v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v4, "HeaderInfo"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->HeaderInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashAlgorithm:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v5, "hashId"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$2;

    invoke-direct {v5}, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$2;-><init>()V

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->deferred(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v7, "tbsData"

    invoke-virtual {v5, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v7, "signer"

    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Signature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v7, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    filled-new-array {v4, v5, v2, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v4, "SignedData"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "unsecuredData"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$3;

    invoke-direct {v4}, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$3;-><init>()V

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->deferred(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "signedData"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "encryptedData"

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v5, "signedCertificateRequest"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v12, 0x0

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v5

    filled-new-array {v2, v4, v1, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Ieee1609Dot2Content"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->Ieee1609Dot2Content:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->UINT8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "protocolVersion"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v4, "content"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v5, "CounterSignature"

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CounterSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->UINT8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v15, 0x1

    new-array v5, v15, [Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v8, 0x3

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v17, 0x0

    aput-object v7, v5, v17

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Ieee1609Dot2Data"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->Ieee1609Dot2Data:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "extDataHash"

    invoke-virtual {v6, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "SignedDataPayload"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SignedDataPayload:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "headerInfo"

    invoke-virtual {v3, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "ToBeSignedData"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->extensionBlockSwitchKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method static synthetic access$100()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->etsiHeaderInfoContributorId:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
