.class Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory$1;
.super Ljava/lang/Object;
.source "DefaultAuthenticationMechanismFactory.java"

# interfaces
.implements Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->getKeyboardInteractiveProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;


# direct methods
.method constructor <init>(Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory$1;->this$0:Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/auth/KeyboardInteractiveProvider;
    .locals 3

    .line 129
    new-instance v0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;

    iget-object v1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory$1;->this$0:Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;

    iget-object v1, v1, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->passwordProviders:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    invoke-direct {v0, v1, p1}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;-><init>([Lcom/sshtools/common/auth/PasswordAuthenticationProvider;Lcom/sshtools/common/ssh/SshConnection;)V

    return-object v0
.end method
