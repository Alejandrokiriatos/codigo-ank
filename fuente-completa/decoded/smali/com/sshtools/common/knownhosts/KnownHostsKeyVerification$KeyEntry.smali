.class public abstract Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "KeyEntry"
.end annotation


# instance fields
.field comment:Ljava/lang/String;

.field hashedEntry:Z

.field key:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 659
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V

    const/4 p1, 0x0

    .line 657
    iput-boolean p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->hashedEntry:Z

    .line 660
    iput-object p2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->names:Ljava/util/Set;

    .line 661
    iput-boolean p5, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->temporary:Z

    .line 662
    iput-object p3, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->key:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 663
    iput-object p4, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->comment:Ljava/lang/String;

    .line 664
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 665
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 666
    iput-boolean p3, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->hashedEntry:Z

    :cond_0
    return-void
.end method


# virtual methods
.method canValidate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->key:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object v0
.end method

.method public getNames()Ljava/lang/String;
    .locals 4

    .line 680
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 681
    iget-object v1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->names:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 682
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 683
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 687
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCertAuthority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHashedEntry()Z
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->hashedEntry:Z

    return v0
.end method

.method public isRevoked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method varargs matches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 744
    const-string v0, "\\."

    const-string v1, "."

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 745
    const-string v0, "["

    const-string v2, "\\["

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 746
    const-string v0, "]"

    const-string v2, "\\]"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 748
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const-string v2, ".*"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 752
    :cond_0
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 756
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 757
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method varargs matchesHash(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 691
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 692
    iget-object v4, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    invoke-static {v4, p1, v3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;->-$$Nest$mcheckHash(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method varargs matchesHost([Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->names:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 706
    const-string v6, "|1|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 707
    invoke-virtual {p0, v5, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matchesHash(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 709
    :cond_1
    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 710
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v1

    move v4, v2

    goto :goto_0

    .line 715
    :cond_2
    invoke-virtual {p0, v5, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    return v4

    :cond_4
    return v2
.end method

.method varargs validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 735
    invoke-virtual {p0, p2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->matchesHost([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 736
    iget-object p2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->key:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
