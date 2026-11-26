.class public Lcom/sshtools/common/publickey/EphemeralCertificateStore;
.super Ljava/lang/Object;
.source "EphemeralCertificateStore.java"


# instance fields
.field final caKey:Lcom/sshtools/common/ssh/components/SshKeyPair;

.field final keyAlgorithm:Ljava/lang/String;

.field final ttl:Ljava/time/Duration;

.field final userCertificates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/components/SshCertificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/time/Duration;Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshKeyPair;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sshtools/common/publickey/EphemeralCertificateStore;->ttl:Ljava/time/Duration;

    .line 43
    iput-object p2, p0, Lcom/sshtools/common/publickey/EphemeralCertificateStore;->keyAlgorithm:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/sshtools/common/publickey/EphemeralCertificateStore;->caKey:Lcom/sshtools/common/ssh/components/SshKeyPair;

    .line 45
    new-instance p2, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;-><init>(J)V

    iput-object p2, p0, Lcom/sshtools/common/publickey/EphemeralCertificateStore;->userCertificates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getKey(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/sshtools/common/publickey/EphemeralCertificateStore;->userCertificates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshCertificate;

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sshtools/common/publickey/EphemeralCertificateStore;->keyAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshKeyPairGenerator;->generateKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object v1

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sshtools/common/publickey/EphemeralCertificateStore;->caKey:Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-object v4, p1

    .line 53
    invoke-static/range {v1 .. v6}, Lcom/sshtools/common/publickey/SshCertificateAuthority;->generateUserCertificate(Lcom/sshtools/common/ssh/components/SshKeyPair;JLjava/lang/String;ILcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/common/ssh/components/SshCertificate;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/sshtools/common/publickey/EphemeralCertificateStore;->userCertificates:Ljava/util/Map;

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    return-object v0
.end method
