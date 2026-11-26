.class Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;
.super Ljava/lang/Object;
.source "SshCompatibilityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/SshCompatibilityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationCollector"
.end annotation


# instance fields
.field con:Lcom/sshtools/common/ssh/SshConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedCipherCS()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getCipherInUseCS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedCipherSC()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getCipherInUseSC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedCompressionCS()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getCompressionInUseCS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedCompressionSC()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getCompressionInUseSC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedHostKey()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getHostKeyInUse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedKeyExchange()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getKeyExchangeInUse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedMacCS()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getMacInUseCS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedMacSC()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getMacInUseSC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIdentification()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIdentification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCiphers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteCiphersCS()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v1, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteCiphersSC()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getSupportedCompressions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteCompressionsCS()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v1, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteCompressionsSC()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getSupportedHostKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getRemotePublicKeys()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedKeyExchanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteKeyExchanges()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedMacs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteMacsCS()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v1, p0, Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteMacsSC()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
