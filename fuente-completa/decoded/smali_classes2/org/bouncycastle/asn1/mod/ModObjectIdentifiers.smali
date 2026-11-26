.class public interface abstract Lorg/bouncycastle/asn1/mod/ModObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final id_mod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_mod_algorithmInformation_02:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/mod/ModObjectIdentifiers;->id_mod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "58"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/mod/ModObjectIdentifiers;->id_mod_algorithmInformation_02:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
