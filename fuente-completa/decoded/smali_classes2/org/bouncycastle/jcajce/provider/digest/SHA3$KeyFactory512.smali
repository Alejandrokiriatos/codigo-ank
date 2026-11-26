.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactory512;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactorySHA3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyFactory512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x200

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactorySHA3;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method
