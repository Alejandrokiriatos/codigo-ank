.class public Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;
.super Ljava/lang/Object;
.source "AuthorizedKeyFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile$ErrorEntry;
    }
.end annotation


# instance fields
.field allEntries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/common/util/Entry<",
            "*>;>;"
        }
    .end annotation
.end field

.field keyEntries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;",
            ">;"
        }
    .end annotation
.end field

.field supportedOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "agent-forwarding"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "cert-authority"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "command"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "environment"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "no-agent-forwarding"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "no-port-forwarding"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "no-pty"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "no-user-rc"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "no-X11-forwarding"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "permitopen"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "port-forwarding"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "principals"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "pty"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "restrict"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "tunnel"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "user-rc"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "X11-forwarding"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->supportedOptions:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "agent-forwarding"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "cert-authority"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "command"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "environment"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "no-agent-forwarding"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "no-port-forwarding"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "no-pty"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "no-user-rc"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "no-X11-forwarding"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "permitopen"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "port-forwarding"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "principals"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "pty"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "restrict"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "tunnel"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "user-rc"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "X11-forwarding"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->supportedOptions:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 24

    .line 384
    const-string v0, "foo.example.com"

    const-string v1, "example.com"

    const-string v2, "192.168.0.45"

    const-string v3, "127.0.0.1"

    const-string v4, "FOO"

    const-string v5, "localhost"

    .line 0
    const-string v6, "Principals       : "

    const-string v7, "Cert Authority   : "

    const-string v8, "Environment      : "

    const-string v9, "Can Forward To   : "

    const-string v10, "Can Connect      : "

    const-string v11, "Fixed Command    : "

    const-string v12, "X11 Forwarding   : "

    const-string v13, "User RC          : "

    const-string v14, "Pty              : "

    const-string v15, "Port Forwarding  : "

    move-object/from16 p0, v6

    const-string v6, "Agent Forwarding : "

    move-object/from16 v16, v7

    .line 384
    :try_start_0
    new-instance v7, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;

    move-object/from16 v17, v8

    const-string v8, "restrict,agent-forwarding,cert-authority,command=\"ls\",environment=\"VALUE=value\",from=\"127.0.0.1,192.168.0.0/24\",no-agent-forwarding,no-port-forwarding,no-pty,no-user-rc,no-X11-forwarding,permitopen=\"localhost:80,localhost:443\",port-forwarding,principals=\"lee,root\",pty,tunnel=\"3\",user-rc,X11-forwarding ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRqJb3pwl7vkQAMUxYpSHPWnZGJJ5bBP0GA3fK/JWIdXplSclIleukhJC/gP4HQTVPAQ+lMl7L9dy9mScRHcRYZzpY8Cm46mji7HaYPgDrjHYnla6A6cOqdJuw8IYk3vVjmo49OZLJE7p2GwdLg0poFFwhUZa5wJQxQwy8PetehgN3oUYOB7NP6wHB4jdfY6GrMWzDeP52OX3QOZZKZfoKuVeVATmYCvn7LFYb5ysEFBve2Jr7bXcN5AFDpAerM/4ybRWcpWGt7IG7bOMLlxI2j9zEkTSwFQ5ShakyaZNA1v+qZXZJ3y54OwqETUSjFmDpA2RBGWJ3wYbrN2sk5YJt lee@kit"

    invoke-direct {v7, v8}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v7}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getKeys()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    .line 518
    new-instance v7, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;

    const-string v8, "from=\"!192.168.0.4?,192.168.0.0/24\",permitopen=\"localhost:22\" ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRqJb3pwl7vkQAMUxYpSHPWnZGJJ5bBP0GA3fK/JWIdXplSclIleukhJC/gP4HQTVPAQ+lMl7L9dy9mScRHcRYZzpY8Cm46mji7HaYPgDrjHYnla6A6cOqdJuw8IYk3vVjmo49OZLJE7p2GwdLg0poFFwhUZa5wJQxQwy8PetehgN3oUYOB7NP6wHB4jdfY6GrMWzDeP52OX3QOZZKZfoKuVeVATmYCvn7LFYb5ysEFBve2Jr7bXcN5AFDpAerM/4ybRWcpWGt7IG7bOMLlxI2j9zEkTSwFQ5ShakyaZNA1v+qZXZJ3y54OwqETUSjFmDpA2RBGWJ3wYbrN2sk5YJt lee@kit"

    invoke-direct {v7, v8}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v7}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getKeys()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    move-object/from16 v18, v7

    .line 523
    const-string v7, "BAR"

    invoke-virtual {v8, v4, v7}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->addEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v19, v4

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsAgentForwarding()Z

    move-result v4

    move-object/from16 v20, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 526
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsPortForwarding()Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 527
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsPty()Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 528
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsUserRc()Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 529
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsX11Forwarding()Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 530
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->requiresCommandExecution()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "<No Fixed Command>"

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getCommand()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v9

    goto :goto_0

    :cond_0
    move-object v7, v9

    move-object/from16 v21, v7

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 534
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v1}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v7, 0x16

    invoke-virtual {v8, v5, v7}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canForwardTo(Ljava/lang/String;I)Z

    move-result v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v7, 0x1bb

    invoke-virtual {v8, v5, v7}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canForwardTo(Ljava/lang/String;I)Z

    move-result v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getEnvironmentOptions()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->isCertAuthority()Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getPrincipals()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 542
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v18 .. v18}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getFormattedFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 543
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 545
    const-string v4, "10.0.0.0/16"

    invoke-virtual {v8, v4}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->addConnectFrom(Ljava/lang/String;)V

    .line 546
    const-string v4, "192.168.0.0/24"

    invoke-virtual {v8, v4}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->removeConnectFrom(Ljava/lang/String;)V

    move-object/from16 v4, v19

    .line 547
    invoke-virtual {v8, v4}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->removeEnvironmentVariable(Ljava/lang/String;)V

    .line 548
    const-string v4, "lee"

    invoke-virtual {v8, v4}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->addPrincipal(Ljava/lang/String;)V

    .line 549
    const-string v4, "localhost:4000"

    invoke-virtual {v8, v4}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->addForwardTo(Ljava/lang/String;)V

    .line 551
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsAgentForwarding()Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsPortForwarding()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 553
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsPty()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 554
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsUserRc()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsX11Forwarding()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->requiresCommandExecution()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getCommand()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object/from16 v9, v21

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 558
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 559
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v1}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 561
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v2, v22

    invoke-virtual {v8, v2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canConnectFrom(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x16

    invoke-virtual {v8, v5, v2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canForwardTo(Ljava/lang/String;I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x1bb

    invoke-virtual {v8, v5, v2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->canForwardTo(Ljava/lang/String;I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getEnvironmentOptions()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->isCertAuthority()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 566
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getPrincipals()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 567
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 568
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v18 .. v18}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getFormattedFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 572
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method static splitName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3d

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Option with invalid format! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static splitValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3d

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Option with invalid format! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addBlankLine()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    new-instance v1, Lcom/sshtools/common/util/BlankLineEntry;

    invoke-direct {v1}, Lcom/sshtools/common/util/BlankLineEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addCommentLine(Ljava/lang/String;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    new-instance v1, Lcom/sshtools/common/util/CommentEntry;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/CommentEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addErrorEntry(Ljava/lang/String;)V
    .locals 2

    .line 211
    const-string v0, "Failed to parse authorized_keys line: {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    new-instance v1, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile$ErrorEntry;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile$ErrorEntry;-><init>(Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V
    .locals 2

    .line 173
    new-instance v0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v0, p1, v1, p2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;-><init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 175
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs addKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;[Lcom/sshtools/common/publickey/authorized/Option;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Ljava/lang/String;",
            "[",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;)V"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getKeyEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;)Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    new-instance v1, Ljava/util/LinkedList;

    .line 183
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v1, p2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;-><init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key is already present in authorized_keys file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method addSSH1KeyEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 238
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object p4

    .line 243
    invoke-virtual {p4, p3, p2}, Lcom/sshtools/common/ssh/components/ComponentManager;->createRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    move-result-object p2

    .line 246
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->parseOptions(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    .line 248
    new-instance p3, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    invoke-direct {p3, p2, p1, p5}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;-><init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addSSH2KeyEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-static {p3}, Lcom/sshtools/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p2

    .line 259
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->parseOptions(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    .line 261
    new-instance p3, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    invoke-direct {p3, p2, p1, p4}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;-><init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFormattedFile()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/util/Entry;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 228
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :cond_0
    invoke-virtual {v2}, Lcom/sshtools/common/util/Entry;->getFormattedEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;)Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    .line 146
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    .line 137
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isBase64(Ljava/lang/String;)Z
    .locals 1

    .line 198
    const-string v0, "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isNumeric(Ljava/lang/String;)Z
    .locals 0

    .line 203
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-string v0, ""

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 77
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 79
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addBlankLine()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-virtual {p0, v8}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addCommentLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0, v8, v2, v3}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->parseLine(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v2

    .line 88
    array-length v4, v2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 90
    invoke-virtual {p0, v8}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addErrorEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    aget-object v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x3

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    array-length v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v6, :cond_5

    .line 96
    :try_start_2
    const-string v4, ""

    aget-object v3, v2, v3

    move-object v10, v4

    aget-object v4, v2, v9

    aget-object v5, v2, v5

    array-length v9, v2

    if-le v9, v6, :cond_4

    aget-object v2, v2, v6

    move-object v6, v2

    goto :goto_1

    :cond_4
    move-object v6, v0

    :goto_1
    move-object v1, p0

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addSSH1KeyEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 98
    :catch_0
    :try_start_3
    invoke-virtual {p0, v8}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addErrorEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_5
    aget-object v4, v2, v9

    invoke-virtual {p0, v4}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->isBase64(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    array-length v4, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v4, v5, :cond_7

    .line 104
    :try_start_4
    aget-object v3, v2, v3

    aget-object v4, v2, v9

    array-length v6, v2

    if-le v6, v5, :cond_6

    aget-object v2, v2, v5

    goto :goto_2

    :cond_6
    move-object v2, v0

    :goto_2
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addSSH2KeyEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 106
    :catch_1
    :try_start_5
    invoke-virtual {p0, v8}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addErrorEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_7
    aget-object v4, v2, v9

    invoke-virtual {p0, v4}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    array-length v4, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x4

    if-lt v4, v10, :cond_9

    .line 111
    :try_start_6
    aget-object v3, v2, v3

    move-object v4, v3

    aget-object v3, v2, v9

    move-object v9, v4

    aget-object v4, v2, v5

    aget-object v5, v2, v6

    array-length v6, v2

    if-le v6, v10, :cond_8

    aget-object v2, v2, v10

    move-object v6, v2

    goto :goto_3

    :cond_8
    move-object v6, v0

    :goto_3
    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addSSH1KeyEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 113
    :catch_2
    :try_start_7
    invoke-virtual {p0, v8}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addErrorEntry(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_9
    array-length v4, v2

    if-le v4, v5, :cond_0

    aget-object v4, v2, v5

    invoke-virtual {p0, v4}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->isBase64(Ljava/lang/String;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_0

    .line 118
    :try_start_8
    aget-object v3, v2, v3

    aget-object v4, v2, v9

    aget-object v5, v2, v5

    array-length v9, v2

    if-le v9, v6, :cond_a

    aget-object v2, v2, v6

    goto :goto_4

    :cond_a
    move-object v2, v0

    :goto_4
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addSSH2KeyEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 120
    :catch_3
    :try_start_9
    invoke-virtual {p0, v8}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addErrorEntry(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 126
    :cond_b
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 128
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 75
    :try_start_c
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_d
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    .line 128
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 131
    :catch_5
    throw v0
.end method

.method parseLine(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 8

    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 341
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 342
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v4, :cond_0

    if-ne v6, p2, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    :cond_0
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_1

    .line 348
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v7, 0x22

    if-ne v6, v7, :cond_2

    if-nez v5, :cond_2

    xor-int/lit8 v4, v4, 0x1

    if-nez p3, :cond_3

    .line 354
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v2

    goto :goto_0

    .line 363
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_5
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method parseOptions(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;>;"
        }
    .end annotation

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 287
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/16 v1, 0x2c

    const/4 v2, 0x1

    .line 288
    invoke-virtual {p0, p1, v1, v2}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->parseLine(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    .line 289
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_13

    aget-object v3, p1, v2

    .line 290
    const-string v4, "agent-forwarding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 292
    :cond_1
    const-string v4, "cert-authority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 294
    :cond_2
    const-string v4, "command="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    new-instance v4, Lcom/sshtools/common/publickey/authorized/CommandOption;

    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->splitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/CommandOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 296
    :cond_3
    const-string v4, "environment="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    new-instance v4, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;

    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->splitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 298
    :cond_4
    const-string v4, "from="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 299
    new-instance v4, Lcom/sshtools/common/publickey/authorized/FromOption;

    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->splitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/FromOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 300
    :cond_5
    const-string v4, "no-agent-forwarding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 301
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 302
    :cond_6
    const-string v4, "no-port-forwarding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 303
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 304
    :cond_7
    const-string v4, "no-pty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 305
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 306
    :cond_8
    const-string v4, "no-user-rc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 307
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 308
    :cond_9
    const-string v4, "no-X11-forwarding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 309
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 310
    :cond_a
    const-string v4, "permitopen="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 311
    new-instance v4, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->splitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 312
    :cond_b
    const-string v4, "port-forwarding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 313
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 314
    :cond_c
    const-string v4, "principals="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 315
    new-instance v4, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->splitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    :cond_d
    const-string v4, "pty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 317
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_e
    const-string v4, "restrict"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 319
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    :cond_f
    const-string v4, "tunnel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 321
    new-instance v4, Lcom/sshtools/common/publickey/authorized/TunnelOption;

    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->splitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/TunnelOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_10
    const-string v4, "user-rc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 323
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_11
    const-string v4, "X11-forwarding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 325
    new-instance v4, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-direct {v4, v3}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 327
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not recognised"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    return-object v0
.end method

.method public removeKey(Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->keyEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->allEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs removeKeys([Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 3

    .line 158
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 160
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getKeyEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;)Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    move-result-object v2

    .line 161
    invoke-virtual {p0, v2}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->removeKey(Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getFormattedFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lcom/sshtools/common/util/IOUtils;->writeStringToStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOption(Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;Lcom/sshtools/common/publickey/authorized/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p1, p2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->setOption(Lcom/sshtools/common/publickey/authorized/Option;)V

    return-void
.end method

.method public setOption(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/publickey/authorized/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;)V"
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getKeyEntry(Lcom/sshtools/common/ssh/components/SshPublicKey;)Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->setOption(Lcom/sshtools/common/publickey/authorized/Option;)V

    return-void
.end method
