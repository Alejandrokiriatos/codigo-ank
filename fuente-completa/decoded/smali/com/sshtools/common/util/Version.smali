.class public Lcom/sshtools/common/util/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field static version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrandId()Ljava/lang/String;
    .locals 3

    .line 95
    invoke-static {}, Lcom/sshtools/common/util/Version;->getProductId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Product id must consist of string formatted like <brand>-<product>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getProductId()Ljava/lang/String;
    .locals 2

    .line 91
    const-string v0, "hypersocket.id"

    const-string v1, "hypersocket-one"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "maverick-base"

    invoke-static {v0}, Lcom/sshtools/common/util/Version;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 43
    const-string v0, "version"

    .line 0
    const-string v1, "/META-INF/maven/com.sshtools/"

    .line 43
    const-string v2, "maverick.development.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 48
    :cond_0
    sget-object v2, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;

    if-eqz v2, :cond_1

    return-object v2

    .line 54
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/pom.properties"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {v2, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 58
    const-string p0, ""

    invoke-virtual {v2, v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    :cond_2
    sget-object p0, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;

    if-nez p0, :cond_3

    .line 66
    const-class p0, Lcom/sshtools/common/util/Version;

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 68
    invoke-virtual {p0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 70
    invoke-virtual {p0}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;

    .line 75
    :cond_3
    sget-object p0, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;

    if-nez p0, :cond_4

    .line 77
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    .line 79
    new-instance v1, Ljava/io/File;

    const-string v2, "pom.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 80
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 82
    :catch_1
    const-string p0, "DEV_VERSION"

    sput-object p0, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;

    .line 87
    :cond_4
    :goto_0
    sget-object p0, Lcom/sshtools/common/util/Version;->version:Ljava/lang/String;

    return-object p0
.end method
