.class public Lorg/bouncycastle/est/ESTService;
.super Ljava/lang/Object;


# static fields
.field protected static final CACERTS:Ljava/lang/String; = "/cacerts"

.field protected static final CSRATTRS:Ljava/lang/String; = "/csrattrs"

.field protected static final FULLCMC:Ljava/lang/String; = "/fullcmc"

.field protected static final SERVERGEN:Ljava/lang/String; = "/serverkeygen"

.field protected static final SIMPLE_ENROLL:Ljava/lang/String; = "/simpleenroll"

.field protected static final SIMPLE_REENROLL:Ljava/lang/String; = "/simplereenroll"

.field protected static final illegalParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pathInValid:Ljava/util/regex/Pattern;


# instance fields
.field private final clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

.field private final server:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "/cacerts"

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "/simpleenroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "/simplereenroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "/fullcmc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "/serverkeygen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "/csrattrs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "^[0-9a-zA-Z_\\-.~!$&\'()*+,;:=]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/ESTService;->pathInValid:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/est/ESTClientProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTService;->verifyServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/bouncycastle/est/ESTService;->verifyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/.well-known/est/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/.well-known/est"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/est/ESTService;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTService;->annotateRequest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private annotateRequest([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v3, v2, 0x30

    array-length v4, p1

    if-ge v3, v4, :cond_1

    const/16 v4, 0x30

    invoke-static {p1, v2, v4}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v2, p1

    :goto_0
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    array-length v3, p1

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getASN1InputStream(Ljava/io/InputStream;Ljava/lang/Long;)Lorg/bouncycastle/asn1/ASN1InputStream;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    :cond_1
    new-instance p2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    return-object p2
.end method

.method public static storeToArray(Lorg/bouncycastle/util/Store;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;)[",
            "Lorg/bouncycastle/cert/X509CertificateHolder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/est/ESTService;->storeToArray(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Selector;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p0

    return-object p0
.end method

.method public static storeToArray(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Selector;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;",
            "Lorg/bouncycastle/util/Selector<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;)[",
            "Lorg/bouncycastle/cert/X509CertificateHolder;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object p0
.end method

.method private verifyLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :goto_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/bouncycastle/est/ESTService;->pathInValid:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is a reserved path segment."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " contains invalid characters"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Label set but after trimming \'/\' is not zero length string."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/"

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Server contains path, must only be <dnsname/ipaddress>:port, a path of \'/.well-known/est/<label>\' will be added arbitrarily."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Server contains scheme, must only be <dnsname/ipaddress>:port, https:// will be added arbitrarily."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/IllegalArgumentException;

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheme and host is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected enroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    iget-object v1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v1}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bouncycastle/est/ESTService;->annotateRequest([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p4, :cond_0

    const-string p1, "/serverkeygen"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "/simplereenroll"

    goto :goto_0

    :cond_1
    const-string p1, "/simpleenroll"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {p1}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object p1

    new-instance p4, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v3, "POST"

    invoke-direct {p4, v3, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {p4, p2}, Lorg/bouncycastle/est/ESTRequestBuilder;->withData([B)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object p4

    const-string v2, "Content-Type"

    const-string v3, "application/pkcs10"

    invoke-virtual {p4, v2, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v2, "Content-Length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v2, p2}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string p2, "Content-Transfer-Encoding"

    const-string v0, "base64"

    invoke-virtual {p4, p2, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    if-eqz p3, :cond_2

    invoke-interface {p3, p4}, Lorg/bouncycastle/est/ESTAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V

    :cond_2
    invoke-virtual {p4}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    instance-of p2, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :cond_4
    new-instance p2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_5
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No trust anchors."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enrollPop(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p5, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {p5}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result p5

    if-eqz p5, :cond_5

    const/4 p5, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "/simplereenroll"

    goto :goto_0

    :cond_0
    const-string p1, "/simpleenroll"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {p1}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v2, "POST"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v1, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/est/ESTService$1;

    invoke-direct {v1, p0, p2, p3}, Lorg/bouncycastle/est/ESTService$1;-><init>(Lorg/bouncycastle/est/ESTService;Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withConnectionListener(Lorg/bouncycastle/est/ESTSourceConnectionListener;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object p2

    if-eqz p4, :cond_1

    invoke-interface {p4, p2}, Lorg/bouncycastle/est/ESTAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object p5

    invoke-virtual {p0, p5}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    instance-of p2, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :cond_3
    new-instance p2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_4
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No trust anchors."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCACerts()Lorg/bouncycastle/est/CACertsResponse;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    const-string v1, "Decoding CACerts: "

    const-string v0, "Response : "

    const-string v2, " got "

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cacerts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v5}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v7, "GET"

    invoke-direct {v6, v7, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v7, 0xc8

    const-string v13, "Get CACerts: "

    if-ne v6, v7, :cond_3

    :try_start_2
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getHeaders()Lorg/bouncycastle/est/HttpUtil$Headers;

    move-result-object v6

    const-string v7, "Content-Type"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "application/pkcs7-mime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/est/ESTService;->getASN1InputStream(Ljava/io/InputStream;Ljava/lang/Long;)Lorg/bouncycastle/asn1/ASN1InputStream;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/cmc/SimplePKIResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    invoke-virtual {v2}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v0

    move-object v9, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, " but was not present."

    :goto_1
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Expecting application/pkcs7-mime "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v0, v3, v1, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2

    :cond_3
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_7

    move-object v8, v3

    move-object v9, v8

    :goto_2
    new-instance v7, Lorg/bouncycastle/est/CACertsResponse;

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v11

    iget-object v0, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v12

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/est/CACertsResponse;-><init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_6

    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :cond_5
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v4

    invoke-direct {v1, v2, v0, v4, v3}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_6
    return-object v7

    :cond_7
    :try_start_6
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto :goto_5

    :catchall_2
    move-exception v0

    :goto_5
    :try_start_7
    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :cond_8
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    :cond_9
    throw v0
.end method

.method public getCSRAttributes()Lorg/bouncycastle/est/CSRRequestResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    const-string v0, "Decoding CACerts: "

    const-string v1, "CSR Attribute request: "

    iget-object v2, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v2}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/csrattrs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v4}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v6, "GET"

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_2

    const/16 v0, 0xcc

    if-eq v6, v0, :cond_1

    const/16 v0, 0x194

    if-ne v6, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/est/ESTService;->getASN1InputStream(Ljava/io/InputStream;Ljava/lang/Long;)Lorg/bouncycastle/asn1/ASN1InputStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    new-instance v5, Lorg/bouncycastle/est/CSRAttributesResponse;

    invoke-static {v1}, Lorg/bouncycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/CsrAttrs;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/bouncycastle/est/CSRAttributesResponse;-><init>(Lorg/bouncycastle/asn1/est/CsrAttrs;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_5

    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :cond_4
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v4

    invoke-direct {v1, v3, v0, v4, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_5
    new-instance v0, Lorg/bouncycastle/est/CSRRequestResponse;

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/est/CSRRequestResponse;-><init>(Lorg/bouncycastle/est/CSRAttributesResponse;Lorg/bouncycastle/est/Source;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_4
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v0, v1, v3, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    :try_start_5
    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :cond_6
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :cond_7
    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No trust anchors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xca

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr v5, v0

    :goto_0
    move-wide v2, v5

    goto :goto_1

    :catch_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/bouncycastle/est/EnrollmentResponse;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/EnrollmentResponse;-><init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse Retry-After header:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_0
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got Status 202 but not Retry-After header from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    const-string v0, "content-type"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeaderOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "multipart/mixed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Lorg/bouncycastle/mime/Headers;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeaderOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "base64"

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/mime/BasicMimeParser;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lorg/bouncycastle/est/ESTService$2;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/est/ESTService$2;-><init>(Lorg/bouncycastle/est/ESTService;[Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lorg/bouncycastle/mime/MimeParser;->parse(Lorg/bouncycastle/mime/MimeParserListener;)V

    const/4 v0, 0x0

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    aget-object v2, v1, v2

    if-eqz v2, :cond_2

    check-cast v2, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v2}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v4

    new-instance v3, Lorg/bouncycastle/est/EnrollmentResponse;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v8

    aget-object p1, v1, v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v9

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/est/EnrollmentResponse;-><init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-object v3

    :cond_2
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    const-string v0, "received neither private key info and certificates"

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_2
    new-instance v1, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cmc/SimplePKIResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_2
    .catch Lorg/bouncycastle/cmc/CMCException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v1}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v3

    new-instance v2, Lorg/bouncycastle/est/EnrollmentResponse;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v7

    const-wide/16 v4, -0x1

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/est/EnrollmentResponse;-><init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    return-object v2

    :catch_2
    move-exception v0

    move-object p1, v0

    new-instance v0, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Lorg/bouncycastle/cmc/CMCException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cmc/CMCException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Simple Enroll: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
.end method

.method public simpleEnroll(Lorg/bouncycastle/est/EnrollmentResponse;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v1}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/est/EnrollmentResponse;->getRequestToRetry()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    instance-of v1, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :cond_1
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No trust anchors."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public simpleEnroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/est/ESTService;->enroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1

    return-object p1
.end method

.method public simpleEnrollPoP(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/est/ESTService;->enrollPop(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1

    return-object p1
.end method

.method public simpleEnrollPopWithServersideCreation(Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/est/ESTService;->enrollPop(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1

    return-object p1
.end method

.method public simpleEnrollWithServersideCreation(Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/est/ESTService;->enroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;Z)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1

    return-object p1
.end method
