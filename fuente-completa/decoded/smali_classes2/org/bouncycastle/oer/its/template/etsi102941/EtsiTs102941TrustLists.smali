.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;
.super Ljava/lang/Object;


# static fields
.field public static final AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DeltaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final FullCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Url:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "CrlEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "SequenceOfCrlEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "thisUpdate"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v5, "nextUpdate"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v6, "entries"

    invoke-virtual {v0, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v7

    filled-new-array {v1, v3, v4, v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "ToBeSignedCrl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->ia5String()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Url"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "DcDelete"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfHashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "cert"

    invoke-virtual {v4, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v4, "DcEntry"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v4, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "aaCertificate"

    invoke-virtual {v4, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v8, "accessPoint"

    invoke-virtual {v0, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    filled-new-array {v4, v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v9, "AaEntry"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "eaCertificate"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v10, "aaAccessPoint"

    invoke-virtual {v0, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v11, "itsAccessPoint"

    invoke-virtual {v0, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v10, "EaEntry"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    sput-object v9, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v10, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v11, "selfsignedRootCa"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sget-object v11, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "successorTo"

    invoke-virtual {v11, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v11, "RootCaEntry"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v11, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "selfSignedTLMCertificate"

    invoke-virtual {v11, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    sget-object v13, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v13, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v0, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    filled-new-array {v11, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v8, "TlmEntry"

    invoke-virtual {v0, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v8, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "dc"

    invoke-virtual {v1, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v11

    filled-new-array {v7, v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v7, "CtlDelete"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "rca"

    invoke-virtual {v10, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    const-string v7, "ea"

    invoke-virtual {v9, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    const-string v7, "aa"

    invoke-virtual {v4, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    invoke-virtual {v3, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v3, "tlm"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v3, "CtlEntry"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "add"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v3, "delete"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "CtlCommand"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "SequenceOfCtlCommand"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->bool()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "isFullCtl"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xff

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "ctlSequence"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v1, "ctlCommands"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "CtlFormat"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "DeltaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DeltaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "FullCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->FullCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "ToBeSignedRcaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
