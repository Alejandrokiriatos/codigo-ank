.class public Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.super Ljava/lang/Object;
.source "KnownHostsKeyVerification.java"

# interfaces
.implements Lcom/sshtools/common/knownhosts/HostKeyVerification;
.implements Lcom/sshtools/common/knownhosts/HostKeyUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$BlankEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CommentEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$RevokedEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh1KeyEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;,
        Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;
    }
.end annotation


# static fields
.field private static final HASH_DELIM:Ljava/lang/String; = "|"

.field private static final HASH_MAGIC:Ljava/lang/String; = "|1|"


# instance fields
.field certificateAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field entries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field entriesByPublicKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Ljava/util/List<",
            "Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private hashHosts:Z

.field keyEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;",
            ">;"
        }
    .end annotation
.end field

.field nonStandard:Ljava/util/regex/Pattern;

.field revokedEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;",
            ">;"
        }
    .end annotation
.end field

.field private useCanonicalHostname:Z

.field private useReverseDNS:Z


# direct methods
.method static bridge synthetic -$$Nest$mcheckHash(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->checkHash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->revokedEntries:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->certificateAuthorities:Ljava/util/List;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->hashHosts:Z

    .line 73
    const-string v0, "maverick.knownHosts.enableReverseDNS"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useCanonicalHostname:Z

    .line 75
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useReverseDNS:Z

    .line 80
    const-string v0, "\\[([^\\]]+)\\]:([\\d]{1,5})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->nonStandard:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->revokedEntries:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->certificateAuthorities:Ljava/util/List;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->hashHosts:Z

    .line 73
    const-string v0, "maverick.knownHosts.enableReverseDNS"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useCanonicalHostname:Z

    .line 75
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useReverseDNS:Z

    .line 80
    const-string v0, "\\[([^\\]]+)\\]:([\\d]{1,5})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->nonStandard:Ljava/util/regex/Pattern;

    .line 83
    invoke-virtual {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->revokedEntries:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->certificateAuthorities:Ljava/util/List;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->hashHosts:Z

    .line 73
    const-string v0, "maverick.knownHosts.enableReverseDNS"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useCanonicalHostname:Z

    .line 75
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useReverseDNS:Z

    .line 80
    const-string v0, "\\[([^\\]]+)\\]:([\\d]{1,5})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->nonStandard:Ljava/util/regex/Pattern;

    .line 87
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/sshtools/common/util/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method private addEntry(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    instance-of v0, p1, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    instance-of v0, p1, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$RevokedEntry;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->revokedEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_2
    invoke-virtual {p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getNames()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->getNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onHostKeyAdded(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    return-void
.end method

.method private checkHash(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 582
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedHMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    const-string v1, "hmac-sha1"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshHmac;

    .line 583
    const-string v1, "|1|"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 584
    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-static {p1}, Lcom/sshtools/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 589
    invoke-static {v2}, Lcom/sshtools/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/SshHmac;->init([B)V

    .line 590
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/sshtools/common/ssh/components/SshHmac;->update([B)V

    .line 592
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshHmac;->doFinal()[B

    move-result-object p2

    .line 594
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private generateHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 598
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedHMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    const-string v1, "hmac-sha1"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshHmac;

    .line 599
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshHmac;->getMacLength()I

    move-result v1

    new-array v1, v1, [B

    .line 600
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentManager;->getRND()Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;->nextBytes([B)V

    .line 602
    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/SshHmac;->init([B)V

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sshtools/common/ssh/components/SshHmac;->update([B)V

    .line 605
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshHmac;->doFinal()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 607
    invoke-static {v1, v0}, Lcom/sshtools/common/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/sshtools/common/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "|1|"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNames(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private loadSsh1PublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/StringTokenizer;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 253
    const-string p1, "[0-9]+"

    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 257
    :cond_0
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance p3, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;

    invoke-direct {p3, p0, p4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 262
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onInvalidHostEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p2

    .line 269
    :cond_1
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 271
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance p3, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;

    invoke-direct {p3, p0, p4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 274
    :try_start_1
    invoke-virtual {p0, p4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onInvalidHostEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return p2

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance p3, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh1KeyEntry;

    invoke-direct {p3, p0, p4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh1KeyEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method private loadSsh2PublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 208
    const-string v2, "@cert-authority"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    new-instance v0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;

    invoke-direct/range {p0 .. p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->getNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, p0, v2, p4, p5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->certificateAuthorities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_0
    const-string v2, "@revoked"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    new-instance v6, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$RevokedEntry;

    invoke-direct/range {p0 .. p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->getNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    new-instance v0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;

    invoke-direct/range {p0 .. p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->getNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V

    invoke-direct {v6, p0, v7, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$RevokedEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V

    move-object v0, v6

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;

    invoke-direct/range {p0 .. p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->getNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V

    .line 218
    :goto_0
    invoke-direct {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->addEntry(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized addEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useHashHosts()Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 418
    array-length v8, p4

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v0, p4, v9

    .line 419
    new-instance v2, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;

    move-object v3, v2

    new-instance v2, Ljava/util/HashSet;

    new-array v4, v6, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    xor-int/lit8 v5, p3, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v0, v3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->addEntry(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 422
    :cond_0
    new-instance v0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;

    new-instance v2, Ljava/util/HashSet;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    xor-int/lit8 v5, p3, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->addEntry(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs declared-synchronized addEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 412
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->addEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public allowHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->resolveNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->addEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 95
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 96
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->revokedEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 97
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->certificateAuthorities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getKeyEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;",
            ">;"
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    return-object v0
.end method

.method public isHostFileWriteable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isKnownHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 954
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Z)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->clear()V

    .line 104
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance v2, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$BlankEntry;

    invoke-direct {v2, p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$BlankEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance v3, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CommentEntry;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CommentEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    iget-object v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance v3, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;

    invoke-direct {v3, p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onInvalidHostEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 131
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    const-string v4, ""

    .line 133
    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    .line 141
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_4

    .line 142
    iget-object v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance v3, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;

    invoke-direct {v3, p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onInvalidHostEntry(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 150
    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-direct {p0, v3, v5, v2, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->loadSsh1PublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/StringTokenizer;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 154
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_5

    .line 155
    iget-object v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance v3, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;

    invoke-direct {v3, p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 157
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onInvalidHostEntry(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 163
    :cond_5
    :try_start_8
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v6

    .line 164
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 166
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 167
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_6
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 171
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v2, p0

    :try_start_9
    invoke-direct/range {v2 .. v7}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->loadSsh2PublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v2, p0

    goto/16 :goto_0

    :catch_1
    move-object v2, p0

    .line 187
    :catch_2
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 188
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v3, "Error parsing known_hosts file, is your file corrupt?"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_3
    move-object v2, p0

    .line 181
    :catch_4
    iget-object v3, v2, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance v4, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;

    invoke-direct {v4, p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 183
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onInvalidHostEntry(Ljava/lang/String;)V
    :try_end_b
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_5
    move-object v2, p0

    .line 175
    :catch_6
    :try_start_c
    iget-object v3, v2, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    new-instance v4, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;

    invoke-direct {v4, p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 177
    :try_start_d
    invoke-virtual {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onInvalidHostEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_9
    move-object v2, p0

    .line 194
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 195
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 197
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object v2, p0

    .line 194
    :goto_2
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 195
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 196
    throw v0

    :catchall_2
    move-exception v0

    move-object v2, p0

    :goto_3
    move-object p1, v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw p1

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method protected onHostKeyAdded(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected onHostKeyMismatch(Ljava/lang/String;Ljava/util/List;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    return-void
.end method

.method protected onHostKeyRemoved(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected onHostKeyUpdated(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected onInvalidHostEntry(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    return-void
.end method

.method protected onRevokedKey(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0

    return-void
.end method

.method protected onUnknownHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized removeEntries(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 1

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 377
    new-array v0, v0, [Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->removeEntry([Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeEntries(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 357
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->getKeyEntries()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    const/4 v4, 0x1

    .line 360
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v3

    invoke-virtual {v2, v4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matchesHost([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_1
    new-array p1, v3, [Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->removeEntry([Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized removeEntries([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 369
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 370
    invoke-virtual {p0, v2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->removeEntries(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized removeEntry([Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V
    .locals 4

    monitor-enter p0

    .line 382
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 385
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->revokedEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 386
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 388
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->certificateAuthorities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 394
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 395
    invoke-virtual {v2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getNames()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->getNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onHostKeyRemoved(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected resolveNames(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 532
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->nonStandard:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 537
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useCanonicalHostname()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useReverseDNS()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 542
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 544
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useCanonicalHostname()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    const-string v5, "[%s]:%s"

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 546
    :try_start_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 548
    :cond_2
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 550
    :goto_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useReverseDNS()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    .line 554
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 556
    :cond_4
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    .line 558
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    return-object v0
.end method

.method public declared-synchronized setComment(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iput-object p2, p1, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->comment:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "KeyEntry provided is no longer in this known_hosts file."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHashHosts(Z)V
    .locals 0

    monitor-enter p0

    .line 286
    :try_start_0
    iput-boolean p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->hashHosts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setUseCanonicalHostnames(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useCanonicalHostname:Z

    return-void
.end method

.method public setUseReverseDNS(Z)V
    .locals 0

    .line 945
    iput-boolean p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useReverseDNS:Z

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 630
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;

    .line 632
    iget-boolean v3, v2, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;->temporary:Z

    if-nez v3, :cond_0

    .line 633
    invoke-virtual {v2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;->getFormattedLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 637
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateHostKey(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->resolveNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 963
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->getKeyEntries()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    .line 964
    invoke-virtual {v3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->isHashedEntry()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 965
    invoke-virtual {v3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getNames()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matchesHash(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 968
    :cond_1
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matchesHost([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 974
    invoke-virtual {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->removeEntries(Ljava/lang/String;)V

    .line 977
    :cond_3
    new-array p1, v4, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, p2, v1, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->addEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 980
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onHostKeyUpdated(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    :cond_4
    return-void
.end method

.method public useCanonicalHostname()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useCanonicalHostname:Z

    return v0
.end method

.method public useHashHosts()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->hashHosts:Z

    return v0
.end method

.method public useReverseDNS()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->useReverseDNS:Z

    return v0
.end method

.method public declared-synchronized verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 447
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 452
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->resolveNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->revokedEntries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    .line 455
    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onRevokedKey(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return v3

    .line 461
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 462
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 463
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    .line 464
    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 465
    monitor-exit p0

    return v2

    .line 470
    :cond_3
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    iget-object v4, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->entriesByPublicKey:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    .line 473
    new-array v8, v2, [Ljava/lang/String;

    aput-object p1, v8, v3

    invoke-virtual {v7, v8}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matchesHost([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 474
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sshtools/common/ssh/components/SshPublicKey;

    new-array v9, v3, [Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 475
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 482
    invoke-virtual {p0, p1, v1, p2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onHostKeyMismatch(Ljava/lang/String;Ljava/util/List;Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 484
    invoke-virtual {p0, p1, p2, v3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Z)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 489
    :cond_7
    :try_start_3
    instance-of v1, p2, Lcom/sshtools/common/publickey/OpenSshCertificate;

    if-eqz v1, :cond_9

    .line 490
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->certificateAuthorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;

    .line 491
    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;->validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_8

    .line 492
    monitor-exit p0

    return v2

    .line 497
    :cond_9
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v4, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->keyEntries:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    .line 499
    new-array v6, v3, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matchesHost([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 500
    invoke-virtual {v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_b

    .line 501
    monitor-exit p0

    return v2

    .line 503
    :cond_b
    :try_start_5
    invoke-virtual {v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 508
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 p3, 0x0

    .line 509
    invoke-virtual {p0, p1, p3, p2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onHostKeyMismatch(Ljava/lang/String;Ljava/util/List;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_d
    if-nez p3, :cond_e

    .line 514
    monitor-exit p0

    return v3

    .line 516
    :cond_e
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->onUnknownHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 520
    :goto_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Z)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method
