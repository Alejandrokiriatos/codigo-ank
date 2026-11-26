.class public Lcom/sshtools/common/publickey/SshKeyPairGenerator;
.super Ljava/lang/Object;
.source "SshKeyPairGenerator.java"


# static fields
.field public static final ECDSA:Ljava/lang/String; = "ecdsa"

.field public static final ED25519:Ljava/lang/String; = "ed25519"

.field public static final ED448:Ljava/lang/String; = "ed448"

.field public static final SSH2_RSA:Ljava/lang/String; = "ssh-rsa"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ecdsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "ed448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "rsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "ssh-rsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "ed25519"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected key algorithm %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x100

    .line 91
    invoke-static {p0, v0}, Lcom/sshtools/common/publickey/SshKeyPairGenerator;->generateKeyPair(Ljava/lang/String;I)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    .line 95
    :pswitch_1
    invoke-static {p0, v1}, Lcom/sshtools/common/publickey/SshKeyPairGenerator;->generateKeyPair(Ljava/lang/String;I)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 v0, 0x800

    .line 99
    invoke-static {p0, v0}, Lcom/sshtools/common/publickey/SshKeyPairGenerator;->generateKeyPair(Ljava/lang/String;I)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    .line 93
    :pswitch_3
    invoke-static {p0, v1}, Lcom/sshtools/common/publickey/SshKeyPairGenerator;->generateKeyPair(Ljava/lang/String;I)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73ac8545 -> :sswitch_5
        -0x72865705 -> :sswitch_4
        0x13e20 -> :sswitch_3
        0x1ba40 -> :sswitch_2
        0x5bd84b9 -> :sswitch_1
        0x5bdcc54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static generateKeyPair(Ljava/lang/String;I)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ssh-ed448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "ecdsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "ed448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "rsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "ssh-ed25519"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_0

    :sswitch_6
    const-string v0, "ssh-rsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "ed25519"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 129
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    .line 130
    const-class v1, Lcom/sshtools/common/publickey/KeyGeneratorFactory;

    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/publickey/KeyGeneratorFactory;

    .line 131
    const-class v4, Lcom/sshtools/common/publickey/KeyGenerator;

    invoke-interface {v3}, Lcom/sshtools/common/publickey/KeyGeneratorFactory;->getKeys()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentManager;->isDefaultEnabled(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 132
    invoke-virtual {v0, v3}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    goto :goto_1

    .line 134
    :cond_9
    invoke-virtual {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/publickey/KeyGenerator;

    invoke-interface {p0, p1}, Lcom/sshtools/common/publickey/KeyGenerator;->generateKey(I)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    .line 123
    :pswitch_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/ComponentManager;->generateEcdsaKeyPair(I)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    .line 121
    :pswitch_1
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/ComponentManager;->generateEd448KeyPair()Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    .line 127
    :pswitch_2
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->generateRsaKeyPair(II)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    .line 118
    :pswitch_3
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/ComponentManager;->generateEd25519KeyPair()Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73ac8545 -> :sswitch_7
        -0x72865705 -> :sswitch_6
        -0x55906c0a -> :sswitch_5
        0x13e20 -> :sswitch_4
        0x1ba40 -> :sswitch_3
        0x5bd84b9 -> :sswitch_2
        0x5bdcc54 -> :sswitch_1
        0x14f4b0b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
