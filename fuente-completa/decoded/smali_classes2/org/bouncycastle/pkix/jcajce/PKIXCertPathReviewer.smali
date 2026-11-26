.class public Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;
.super Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final NAME_CHECK_MAX:I = 0x400

.field private static final QC_STATEMENT:Ljava/lang/String;

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.bouncycastle.pkix.CertPathReviewerMessages"


# instance fields
.field protected certPath:Ljava/security/cert/CertPath;

.field protected certs:Ljava/util/List;

.field protected currentDate:Ljava/util/Date;

.field protected errors:[Ljava/util/List;

.field private initialized:Z

.field protected n:I

.field protected notifications:[Ljava/util/List;

.field protected pkixParams:Ljava/security/cert/PKIXParameters;

.field protected policyTree:Ljava/security/cert/PolicyNode;

.field protected subjectPublicKey:Ljava/security/PublicKey;

.field protected trustAnchor:Ljava/security/cert/TrustAnchor;

.field protected validDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->qCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-void
.end method

.method private IPtoString([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkCriticalExtensions()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v5, v2, v3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "CertPathReviewer.criticalExtensionError"

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "CertPathReviewer.unknownCriticalExt"

    new-instance v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "CertPathReviewer.certPathCheckerError"

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_6
    return-void
.end method

.method private checkNameConstraints()V
    .locals 9

    const-string v0, "CertPathReviewer.subjAltNameExtError"

    new-instance v1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;

    invoke-direct {v1}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;-><init>()V

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    new-instance v6, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    invoke-virtual {v1, v6}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_2
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    invoke-virtual {v1, v6}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    const/16 v7, 0x400

    if-gt v6, v7, :cond_0

    move v6, v5

    :goto_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v7
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-virtual {v1, v7}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_6
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "CertPathReviewer.notPermittedEmail"

    new-instance v3, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v3, v7}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v1, v0, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v1

    :catch_1
    move-exception v1

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v1, v4, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_2
    move-exception v0

    const-string v1, "CertPathReviewer.excludedDN"

    new-instance v3, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_3
    move-exception v0

    const-string v1, "CertPathReviewer.notPermittedDN"

    new-instance v3, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_4
    move-exception v0

    const-string v1, "CertPathReviewer.ncSubjectNameError"

    new-instance v3, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_1
    :try_start_8
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v3, :cond_3

    :try_start_9
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_2
    array-length v4, v3

    if-eq v5, v4, :cond_3

    aget-object v4, v3, v5

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v1, "CertPathReviewer.ncExtError"

    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_4
    return-void
.end method

.method private checkPathLength()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_1

    if-gtz v0, :cond_0

    const-string v4, "CertPathReviewer.pathLengthExtended"

    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :try_start_0
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "CertPathReviewer.processLengthConstError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CertPathReviewer.totalPathLength"

    invoke-static {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    return-void
.end method

.method private checkPolicy()V
    .locals 31

    move-object/from16 v1, p0

    const-string v2, "CertPathReviewer.policyExtError"

    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    iget v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [Ljava/util/ArrayList;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v7, "2.5.29.32.0"

    invoke-interface {v11, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const-string v14, "2.5.29.32.0"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    aget-object v9, v5, v6

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v9}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    iget v9, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/2addr v9, v4

    :goto_1
    iget-object v10, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v10}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v6

    goto :goto_2

    :cond_2
    iget v10, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/2addr v10, v4

    :goto_2
    iget-object v11, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v11}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    iget v11, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/2addr v11, v4

    :goto_3
    :try_start_0
    iget-object v12, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_9

    sub-int/2addr v12, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    const-string v16, "CertPathReviewer.policyConstExtError"

    if-ltz v12, :cond_2f

    :try_start_1
    iget v14, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int/2addr v14, v12

    iget-object v13, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v13, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_9

    const-string v26, "CertPathReviewer.policyQualifierError"

    if-eqz v4, :cond_17

    if-eqz v8, :cond_17

    :try_start_3
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v17

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v18

    move-object/from16 v27, v2

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    move-object/from16 v28, v4

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_9

    if-nez v4, :cond_4

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v4
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_9

    :try_start_5
    invoke-static {v14, v5, v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {v14, v5, v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-static/range {v26 .. v26}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_4
    :goto_6
    move-object/from16 v2, v27

    move-object/from16 v4, v28

    goto :goto_5

    :cond_5
    move-object/from16 v27, v2

    move-object/from16 v28, v4

    if-eqz v15, :cond_9

    invoke-interface {v15, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_8

    :cond_6
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object v15, v4

    goto :goto_9

    :cond_9
    :goto_8
    move-object v15, v6

    :goto_9
    if-gtz v10, :cond_a

    iget v2, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-ge v14, v2, :cond_11

    invoke-static {v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_a
    invoke-virtual/range {v28 .. v28}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_9

    if-eqz v6, :cond_b

    :try_start_6
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v22
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_9

    add-int/lit8 v2, v14, -0x1

    :try_start_7
    aget-object v2, v5, v2

    const/4 v4, 0x0

    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_11

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v21, v6

    check-cast v21, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v29, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move/from16 v30, v4

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_c

    check-cast v2, Ljava/lang/String;

    goto :goto_c

    :cond_c
    instance-of v4, v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_f

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v4

    const/16 v17, 0x0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v17, 0x1

    :cond_d
    move-object/from16 v4, v19

    goto :goto_d

    :cond_e
    if-nez v17, :cond_f

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v17, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v23, v2

    move-object/from16 v20, v4

    move/from16 v19, v14

    invoke-direct/range {v17 .. v24}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v4, v17

    move-object/from16 v2, v21

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->addChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    move-object/from16 v21, v2

    aget-object v2, v5, v14

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v2, v29

    move/from16 v4, v30

    goto :goto_b

    :cond_10
    move-object/from16 v29, v2

    move/from16 v30, v4

    add-int/lit8 v4, v30, 0x1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    invoke-static/range {v26 .. v26}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_11
    add-int/lit8 v2, v14, -0x1

    :goto_e
    if-ltz v2, :cond_14

    aget-object v4, v5, v2

    move/from16 v17, v2

    const/4 v6, 0x0

    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_13

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_12

    invoke-static {v8, v5, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v2

    move-object v8, v2

    if-nez v2, :cond_12

    goto :goto_10

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_13
    :goto_10
    add-int/lit8 v2, v17, -0x1

    goto :goto_e

    :cond_14
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_15

    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    aget-object v4, v5, v14

    move-object/from16 v17, v8

    const/4 v6, 0x0

    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_16

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v8, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->setCritical(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_15
    move-object/from16 v17, v8

    :cond_16
    move-object/from16 v8, v17

    goto :goto_12

    :cond_17
    move-object/from16 v27, v2

    move-object/from16 v28, v4

    :goto_12
    if-nez v28, :cond_18

    const/4 v8, 0x0

    :cond_18
    if-gtz v9, :cond_1a

    if-eqz v8, :cond_19

    goto :goto_13

    :cond_19
    const-string v0, "CertPathReviewer.noValidPolicyTree"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :cond_1a
    :goto_13
    iget v2, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_9

    if-eq v14, v2, :cond_2d

    :try_start_8
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v13, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_9

    if-eqz v2, :cond_1d

    :try_start_9
    move-object v4, v2

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v17, v2

    const/4 v6, 0x0

    :goto_14
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v6, v2, :cond_1e

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    check-cast v19, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_9

    const-string v19, "CertPathReviewer.invalidPolicyMapping"

    if-nez v4, :cond_1c

    :try_start_a
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v18

    goto :goto_14

    :cond_1b
    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1c
    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1d
    move-object/from16 v17, v2

    :cond_1e
    if-eqz v17, :cond_23

    move-object/from16 v2, v17

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v17, v8

    move/from16 v18, v9

    const/4 v8, 0x0

    :goto_15
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    if-ge v8, v9, :cond_20

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v20

    check-cast v20, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    move/from16 v20, v8

    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_1f
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_16
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v2, v19

    goto :goto_15

    :cond_20
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v8, v17

    :cond_21
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_9

    if-lez v11, :cond_22

    :try_start_b
    invoke-static {v14, v5, v6, v4, v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_b
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_17

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static/range {v26 .. v26}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_3
    move-exception v0

    invoke-static/range {v27 .. v27}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_22
    if-gtz v11, :cond_21

    invoke-static {v14, v5, v6, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v8

    goto :goto_17

    :cond_23
    move-object/from16 v17, v8

    move/from16 v18, v9

    :cond_24
    invoke-static {v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_c
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_9

    if-nez v2, :cond_27

    if-eqz v18, :cond_25

    add-int/lit8 v9, v18, -0x1

    goto :goto_18

    :cond_25
    move/from16 v9, v18

    :goto_18
    if-eqz v11, :cond_26

    add-int/lit8 v11, v11, -0x1

    :cond_26
    if-eqz v10, :cond_28

    add-int/lit8 v10, v10, -0x1

    goto :goto_19

    :cond_27
    move/from16 v9, v18

    :cond_28
    :goto_19
    :try_start_d
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v13, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :cond_29
    :goto_1a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v14, 0x1

    if-eq v6, v14, :cond_2a

    goto :goto_1a

    :cond_2a
    const/4 v6, 0x0

    invoke-static {v4, v6}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v4

    if-ge v4, v11, :cond_29

    move v11, v4

    goto :goto_1a

    :cond_2b
    const/4 v6, 0x0

    invoke-static {v4, v6}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v4
    :try_end_d
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_9

    if-ge v4, v9, :cond_29

    move v9, v4

    goto :goto_1a

    :cond_2c
    :try_start_e
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v13, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2
    :try_end_e
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_9

    if-ge v2, v10, :cond_2e

    move v10, v2

    goto :goto_1b

    :catch_4
    :try_start_f
    const-string v0, "CertPathReviewer.policyInhibitExtError"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_5
    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_6
    move-exception v0

    const-string v2, "CertPathReviewer.policyMapExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2d
    move-object/from16 v17, v8

    move/from16 v18, v9

    :cond_2e
    :goto_1b
    add-int/lit8 v12, v12, -0x1

    move-object v14, v13

    move-object/from16 v2, v27

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move-object/from16 v27, v2

    invoke-static/range {v27 .. v27}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2f
    move/from16 v18, v9

    invoke-static {v14}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_f
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_f .. :try_end_f} :catch_9

    if-nez v2, :cond_30

    if-lez v18, :cond_30

    add-int/lit8 v9, v18, -0x1

    goto :goto_1c

    :cond_30
    move/from16 v9, v18

    :goto_1c
    :try_start_10
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v14, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    move v4, v9

    :cond_31
    :goto_1d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    if-eqz v9, :cond_32

    const/4 v10, 0x0

    goto :goto_1d

    :cond_32
    const/4 v10, 0x0

    invoke-static {v6, v10}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v6
    :try_end_10
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_10 .. :try_end_10} :catch_9

    if-nez v6, :cond_31

    move v4, v10

    goto :goto_1d

    :cond_33
    move v9, v4

    :cond_34
    const/4 v10, 0x0

    const-string v2, "CertPathReviewer.explicitPolicy"

    if-nez v8, :cond_36

    :try_start_11
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v13, 0x0

    goto/16 :goto_2a

    :cond_35
    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_36
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v4, v10

    :goto_1e
    if-ge v4, v3, :cond_39

    aget-object v2, v5, v4

    move v6, v10

    :goto_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_38

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v11}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-virtual {v11}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3a
    if-eqz v8, :cond_3e

    iget v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    const/16 v25, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_22
    if-ltz v0, :cond_3e

    aget-object v2, v5, v0

    move v4, v10

    :goto_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_3c

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-static {v8, v5, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v8

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_3d
    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_3e
    move-object v13, v8

    goto/16 :goto_2a

    :cond_3f
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v4, v10

    :goto_24
    if-ge v4, v3, :cond_43

    aget-object v6, v5, v4

    move v11, v10

    :goto_25
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_42

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v12}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    invoke-virtual {v12}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    :cond_40
    :goto_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_41

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_40

    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_41
    add-int/lit8 v11, v11, 0x1

    goto :goto_25

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_43
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    invoke-static {v8, v5, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v3

    move-object v8, v3

    goto :goto_27

    :cond_45
    if-eqz v8, :cond_3e

    iget v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    const/16 v25, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_3e

    aget-object v2, v5, v0

    move v4, v10

    :goto_29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_47

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_46

    invoke-static {v8, v5, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v8

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :goto_2a
    if-gtz v9, :cond_49

    if-eqz v13, :cond_48

    goto :goto_2b

    :cond_48
    const-string v0, "CertPathReviewer.invalidPolicy"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :catch_8
    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_11
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_11 .. :try_end_11} :catch_9

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_49
    :goto_2b
    return-void
.end method

.method private checkSignatures()V
    .locals 23

    move-object/from16 v1, p0

    new-instance v0, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CertPathReviewer.certPathValidDate"

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_0
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v10, :cond_0

    const-string v3, "CertPathReviewer.conflictingTrustAnchors"

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "CertPathReviewer.noTrustAnchorFound"

    new-instance v3, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object v2, v11

    goto :goto_6

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_0
    :try_start_3
    const-string v0, "CertPathReviewer.trustButInvalidCert"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v11

    :goto_3
    new-instance v3, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "CertPathReviewer.unknown"

    invoke-static {v3, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v11

    :goto_4
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    :catch_3
    :goto_6
    move-object v12, v2

    const/4 v13, 0x5

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    goto :goto_7

    :cond_3
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v12}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    new-instance v2, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v12}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CertPathReviewer.trustDNInvalid"

    invoke-static {v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    move-object v2, v11

    :goto_7
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v3, v0

    if-le v3, v13, :cond_4

    aget-boolean v0, v0, v13

    if-nez v0, :cond_6

    :cond_4
    const-string v0, "CertPathReviewer.trustKeyUsage"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    goto :goto_8

    :cond_5
    move-object v2, v11

    :cond_6
    :goto_8
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    goto :goto_9

    :cond_7
    invoke-virtual {v12}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    :goto_9
    :try_start_5
    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    :catch_5
    const-string v4, "CertPathReviewer.trustPubKeyError"

    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    goto :goto_a

    :cond_8
    move-object v0, v11

    move-object v3, v0

    :goto_a
    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v10

    move-object v5, v0

    move-object v14, v2

    move-object v6, v3

    move v9, v4

    :goto_b
    if-ltz v9, :cond_17

    iget v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int v15, v0, v9

    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/security/cert/X509Certificate;

    const-string v2, "CertPathReviewer.signatureNotVerified"

    if-eqz v6, :cond_9

    :try_start_6
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v6, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_d

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    goto/16 :goto_c

    :cond_9
    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    const-string v0, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    goto :goto_c

    :cond_a
    const-string v0, "CertPathReviewer.NoIssuerPublicKey"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v18, v4, v7

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v22

    if-eqz v22, :cond_b

    new-instance v2, Lorg/bouncycastle/pkix/util/LocaleString;

    const-string v4, "missingIssuer"

    const-string v7, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v2, v7, v4}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/pkix/util/LocaleString;

    const-string v8, "missingSerial"

    invoke-direct {v4, v7, v8}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, " "

    const-string v17, " \""

    const-string v19, "\" "

    move-object/from16 v16, v2

    move-object/from16 v20, v4

    filled-new-array/range {v16 .. v22}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setExtraArguments([Ljava/lang/Object;)V

    :cond_b
    :goto_c
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :goto_d
    :try_start_8
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual {v3, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_f

    :catch_8
    new-instance v0, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CertPathReviewer.certificateExpired"

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    goto :goto_e

    :catch_9
    new-instance v0, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CertPathReviewer.certificateNotYetValid"

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :goto_f
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_9
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    const-string v0, "CertPathReviewer.crlDistPtExtError"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_c
    move-object v0, v11

    :goto_10
    :try_start_a
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;

    move-result-object v2
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    const-string v2, "CertPathReviewer.crlAuthInfoAccError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_d
    move-object v2, v11

    :goto_11
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "CertPathReviewer.crlDistPoint"

    invoke-static {v4, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_12

    :cond_e
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "CertPathReviewer.ocspLocation"

    invoke-static {v4, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_13

    :cond_f
    :try_start_b
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_b
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_10
    :goto_14
    if-eqz v14, :cond_11

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CertPathReviewer.certWrongIssuer"

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_11
    iget v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-eq v15, v0, :cond_16

    const-string v0, "CertPathReviewer.noCACert"

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    if-ne v2, v10, :cond_12

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_12
    :try_start_c
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-nez v2, :cond_14

    :goto_15
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_16

    :cond_13
    const-string v0, "CertPathReviewer.noBasicConstraints"
    :try_end_c
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    const-string v0, "CertPathReviewer.errorProcesingBC"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_14
    :goto_16
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_16

    array-length v2, v0

    if-le v2, v13, :cond_15

    aget-boolean v0, v0, v13

    if-nez v0, :cond_16

    :cond_15
    const-string v0, "CertPathReviewer.noCertSign"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_16
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    :try_start_d
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-static {v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    const-string v0, "CertPathReviewer.pubKeyError"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :goto_17
    add-int/lit8 v9, v9, -0x1

    move-object v5, v3

    goto/16 :goto_b

    :cond_17
    iput-object v12, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object v6, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private static createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pkix/util/ErrorBundle;

    const-string v1, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/pkix/util/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method private static createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pkix/util/ErrorBundle;

    const-string v1, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v0, v1, p0, p1}, Lorg/bouncycastle/pkix/util/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    const-string v1, "X.509"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p1, v0, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "CertPathReviewer.loadCrlDistPointError"

    invoke-static {v0, p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v0
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    move-result-object v3

    sget-object v5, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "CertPathReviewer.QcEuCompliance"

    :goto_1
    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    :goto_2
    invoke-virtual {p0, v3, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_3

    :cond_0
    sget-object v5, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v5, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "CertPathReviewer.QcSSCD"

    goto :goto_1

    :cond_2
    sget-object v5, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "CertPathReviewer.QcLimitValueAlpha"

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v8, v9}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v7, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v6, "CertPathReviewer.QcLimitValueNum"

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v7

    invoke-static {v7}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v8, v9}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v7, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    goto/16 :goto_2

    :cond_4
    const-string v2, "CertPathReviewer.QcUnknownStatement"

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v6, v3}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    xor-int/lit8 p1, v2, 0x1

    return p1

    :catch_0
    const-string p1, "CertPathReviewer.QcStatementExtError"

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    return v0
.end method


# virtual methods
.method protected addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    const-string v7, "CertPathReviewer.distrPtExtError"

    const-string v8, "CertPathReviewer.crlExtractionError"

    const-string v9, "CertPathReviewer.crlIssuerException"

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    :try_start_0
    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    :try_start_1
    invoke-static {v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v10}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    invoke-static {v10, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509CRL;

    invoke-virtual {v13}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const-string v13, "CertPathReviewer.noCrlInCertstore"

    new-instance v14, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v14, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v0, v12}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    invoke-static {v10}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v14, v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v14

    new-instance v15, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v15, v12}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v12, v14}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    if-eqz v14, :cond_3

    invoke-virtual {v4, v14}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_3

    :cond_2
    const-string v13, "CertPathReviewer.localInvalidCRL"

    invoke-static {v13, v12}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v12

    invoke-virtual {v1, v12, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_2

    :cond_3
    :goto_3
    const-string v11, "CertPathReviewer.localValidCRL"

    invoke-static {v11, v12}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v11

    invoke-virtual {v1, v11, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    move-object v11, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    move/from16 v20, v11

    move-object v11, v0

    move/from16 v0, v20

    :goto_4
    if-nez v0, :cond_a

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v0

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v16

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v13, "CertPathReviewer.onlineCRLWrongCA"
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v18, v7

    :try_start_3
    new-instance v7, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v19, v8

    :try_start_4
    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-direct {v8, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v7, v10, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_5
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v8

    new-instance v10, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v10, v7}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v7, v8}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v13, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-direct {v13, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v10, v7, v13}, [Ljava/lang/Object;

    move-result-object v0

    if-eqz v8, :cond_7

    invoke-virtual {v4, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_7

    :cond_6
    const-string v7, "CertPathReviewer.onlineInvalidCRL"

    invoke-static {v7, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :cond_7
    :goto_7
    :try_start_5
    const-string v7, "CertPathReviewer.onlineValidCRL"

    invoke-static {v7, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v11, v16

    const/4 v13, 0x1

    goto :goto_b

    :catch_2
    move-exception v0

    const/4 v15, 0x1

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_9

    :cond_8
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v18, v7

    :goto_8
    move-object/from16 v19, v8

    :goto_9
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :goto_a
    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto/16 :goto_5

    :cond_9
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move v13, v15

    goto :goto_b

    :cond_a
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move v13, v0

    :goto_b
    if-eqz v11, :cond_1b

    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_c

    array-length v7, v0

    const/4 v8, 0x6

    if-le v7, v8, :cond_b

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const-string v0, "CertPathReviewer.noCrlSigningPermited"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :cond_c
    :goto_c
    if-eqz v5, :cond_1a

    :try_start_6
    const-string v0, "BC"

    invoke-virtual {v11, v5, v0}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_d

    :try_start_7
    sget-object v5, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v5
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_5

    if-eqz v5, :cond_d

    sget-object v7, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v5

    aget-object v10, v7, v5

    goto :goto_d

    :catch_5
    move-exception v0

    const-string v2, "CertPathReviewer.crlReasonExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_d
    const/4 v10, 0x0

    :goto_d
    if-nez v10, :cond_e

    sget-object v5, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v10, v5, v7

    :cond_e
    new-instance v5, Lorg/bouncycastle/pkix/util/LocaleString;

    const-string v7, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v5, v7, v10}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "CertPathReviewer.revokedAfterValidation"

    invoke-static {v5, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    goto :goto_e

    :cond_f
    new-instance v2, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CertPathReviewer.certRevoked"

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :cond_10
    const-string v0, "CertPathReviewer.notRevoked"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v4, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_11

    new-instance v4, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "CertPathReviewer.crlUpdateAvailable"

    invoke-static {v4, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_11
    :try_start_8
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v11, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_c

    :try_start_9
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-static {v11, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_b

    if-eqz v4, :cond_14

    new-instance v5, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v5}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    :try_start_a
    invoke-static {v11}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    :try_start_b
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v11, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_b
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_b .. :try_end_b} :catch_8

    :try_start_c
    invoke-static {v5, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_c
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_c .. :try_end_c} :catch_7

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    :try_start_d
    sget-object v5, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_d
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_d .. :try_end_d} :catch_6

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_f

    :catch_6
    move-exception v0

    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_13
    const-string v0, "CertPathReviewer.noBaseCRL"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :catch_7
    move-exception v0

    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :catch_8
    move-exception v0

    const-string v2, "CertPathReviewer.crlNbrExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :catch_9
    move-exception v0

    invoke-static {v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_14
    :goto_f
    if-eqz v0, :cond_1b

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    :try_start_e
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2
    :try_end_e
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_e .. :try_end_e} :catch_a

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_10

    :cond_15
    const-string v0, "CertPathReviewer.crlOnlyUserCert"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :cond_16
    :goto_10
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_11

    :cond_17
    const-string v0, "CertPathReviewer.crlOnlyCaCert"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :cond_18
    :goto_11
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_12

    :cond_19
    const-string v0, "CertPathReviewer.crlOnlyAttrCert"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :catch_a
    move-exception v0

    const-string v2, "CertPathReviewer.crlBCExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :catch_b
    const-string v0, "CertPathReviewer.deltaCrlExtError"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :catch_c
    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :catch_d
    move-exception v0

    const-string v2, "CertPathReviewer.crlVerifyFailed"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_1a
    const-string v0, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :cond_1b
    :goto_12
    if-eqz v13, :cond_1c

    return-void

    :cond_1c
    const-string v0, "CertPathReviewer.noValidCrlFound"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    :catch_e
    move-exception v0

    invoke-static {v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    return-void
.end method

.method protected doChecks()V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkSignatures()V

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkNameConstraints()V

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkPathLength()V

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkPolicy()V

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkCriticalExtensions()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object not initialized. Call init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    return v0
.end method

.method public getErrors(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getErrors()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNotifications()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    return-object v0
.end method

.method protected getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method protected getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->parseExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifierObject()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_3
    return-object v0

    :catch_0
    const-string p1, "CertPathReviewer.trustAnchorIssuerError"

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw p2
.end method

.method public init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v0, :cond_3

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    const-string p1, "X.509"

    const-string v1, "BC"

    invoke-static {p1, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unable to rebuild certpath"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    iget-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/PKIXParameters;

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-static {p2, p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getValidityDate(Ljava/security/cert/PKIXParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    const-string p2, "CertPathReviewer.emptyCertPath"

    invoke-static {p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "certPath was null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "object is already initialized!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValidCertPath()Z
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
