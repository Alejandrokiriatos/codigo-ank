.class public Lcom/sshtools/common/publickey/CertificateExtension$Builder;
.super Ljava/lang/Object;
.source "CertificateExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/publickey/CertificateExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field tmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CertificateExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CertificateExtension;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    return-object v0
.end method

.method public customNamedExtension(Ljava/lang/String;)Lcom/sshtools/common/publickey/CertificateExtension$Builder;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    new-instance v1, Lcom/sshtools/common/publickey/NamedCertificateExtension;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sshtools/common/publickey/NamedCertificateExtension;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public customStringExtension(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/publickey/CertificateExtension$Builder;
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    new-instance v1, Lcom/sshtools/common/publickey/StringCertificateExtension;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/sshtools/common/publickey/StringCertificateExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public defaultExtensions()Lcom/sshtools/common/publickey/CertificateExtension$Builder;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    sget-object v1, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_X11_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    sget-object v1, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_AGENT_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    sget-object v1, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_PORT_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    sget-object v1, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_PTY:Lcom/sshtools/common/publickey/CertificateExtension;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    sget-object v1, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_USER_RC:Lcom/sshtools/common/publickey/CertificateExtension;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public knownExtension(Lcom/sshtools/common/publickey/CertificateExtension;)Lcom/sshtools/common/publickey/CertificateExtension$Builder;
    .locals 1

    .line 75
    invoke-virtual {p1}, Lcom/sshtools/common/publickey/CertificateExtension;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/publickey/CertificateExtension$Builder;->tmp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extension instance provided is not a known extension!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
