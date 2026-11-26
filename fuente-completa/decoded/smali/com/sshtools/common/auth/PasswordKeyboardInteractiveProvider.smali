.class public Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;
.super Ljava/lang/Object;
.source "PasswordKeyboardInteractiveProvider.java"

# interfaces
.implements Lcom/sshtools/common/auth/KeyboardInteractiveProvider;


# static fields
.field static final CHANGING_PASSWORD:I = 0x2

.field static final FINISHED:I = 0x2

.field static final REQUESTED_PASSWORD:I = 0x1


# instance fields
.field con:Lcom/sshtools/common/ssh/SshConnection;

.field instruction:Ljava/lang/String;

.field maxAttempts:I

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field providers:[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

.field selectedProvider:Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

.field state:I

.field success:Z

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->success:Z

    .line 42
    const-string v0, "password"

    iput-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->name:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->state:I

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->maxAttempts:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->selectedProvider:Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    return-void
.end method

.method public constructor <init>([Lcom/sshtools/common/auth/PasswordAuthenticationProvider;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->success:Z

    .line 42
    const-string v0, "password"

    iput-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->name:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->state:I

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->maxAttempts:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->selectedProvider:Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    .line 56
    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->providers:[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    .line 57
    iput-object p2, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-void
.end method


# virtual methods
.method protected getChangePasswordFailed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Password change failed! Enter new password for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getChangePasswordInstructions(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enter new password for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getChangePasswordMismatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Passwords do not match! Enter new password for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getConfirmPasswordPrompt()Ljava/lang/String;
    .locals 1

    .line 177
    const-string v0, "Confirm Password:"

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method protected getInstructions(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enter password for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getNewPasswordPrompt()Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, "New Password:"

    return-object v0
.end method

.method protected getPasswordPrompt()Ljava/lang/String;
    .locals 1

    .line 173
    const-string v0, "Password:"

    return-object v0
.end method

.method public hasAuthenticated()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->success:Z

    return v0
.end method

.method public init(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/ssh2/KBIPrompt;
    .locals 3

    .line 156
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->username:Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->con:Lcom/sshtools/common/ssh/SshConnection;

    const/4 p1, 0x1

    .line 158
    new-array p1, p1, [Lcom/sshtools/common/ssh2/KBIPrompt;

    .line 159
    new-instance v0, Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-virtual {p0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getPasswordPrompt()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh2/KBIPrompt;-><init>(Ljava/lang/String;Z)V

    aput-object v0, p1, v2

    .line 160
    iget-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->username:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getInstructions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    return-object p1
.end method

.method public setResponse([Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh2/KBIPrompt;",
            ">;)Z"
        }
    .end annotation

    .line 66
    array-length v0, p1

    const-string v1, "Not enough answers!"

    if-eqz v0, :cond_9

    .line 70
    iget v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->maxAttempts:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->maxAttempts:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-gez v0, :cond_0

    .line 73
    iput v3, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->state:I

    return v4

    .line 77
    :cond_0
    iget v0, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->state:I

    if-eq v0, v2, :cond_5

    if-ne v0, v3, :cond_4

    .line 114
    array-length v0, p1

    if-lt v0, v3, :cond_3

    .line 118
    aget-object v0, p1, v4

    .line 119
    aget-object p1, p1, v2

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->selectedProvider:Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    iget-object v1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v5, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->password:Ljava/lang/String;

    invoke-virtual {p1, v1, v5, v6, v0}, Lcom/sshtools/common/auth/PasswordAuthenticationProvider;->changePassword(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->success:Z

    if-eqz p1, :cond_1

    .line 127
    iput v3, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->state:I
    :try_end_0
    .catch Lcom/sshtools/common/auth/PasswordChangeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 134
    :catch_0
    :cond_1
    iput v3, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->state:I

    .line 136
    new-instance p1, Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-virtual {p0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getNewPasswordPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/sshtools/common/ssh2/KBIPrompt;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p1, Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-virtual {p0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getConfirmPasswordPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/sshtools/common/ssh2/KBIPrompt;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->username:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getChangePasswordFailed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    return v2

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->username:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getChangePasswordMismatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    .line 143
    new-instance p1, Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-virtual {p0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getNewPasswordPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/sshtools/common/ssh2/KBIPrompt;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p1, Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-virtual {p0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getConfirmPasswordPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/sshtools/common/ssh2/KBIPrompt;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return v2

    .line 115
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "We shouldn\'t be here"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_5
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->password:Ljava/lang/String;

    .line 84
    :try_start_1
    iget-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->providers:[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    array-length v0, p1

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_7

    aget-object v5, p1, v1

    .line 85
    iput-object v5, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->selectedProvider:Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    .line 86
    iget-object v6, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v7, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->username:Ljava/lang/String;

    iget-object v8, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->password:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/sshtools/common/auth/PasswordAuthenticationProvider;->verifyPassword(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->success:Z

    if-eqz v5, :cond_6

    .line 88
    iput v3, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->state:I

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_7
    const-string p1, "Sorry, try again"

    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    .line 94
    new-instance p1, Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-virtual {p0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getPasswordPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/sshtools/common/ssh2/KBIPrompt;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/sshtools/common/auth/PasswordChangeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception p1

    .line 110
    iget-object p2, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->con:Lcom/sshtools/common/ssh/SshConnection;

    const/16 v0, 0xb

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/sshtools/common/ssh/SshConnection;->disconnect(ILjava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 98
    iput v3, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->state:I

    .line 99
    iput v3, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->maxAttempts:I

    .line 101
    new-instance v0, Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-virtual {p0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getNewPasswordPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/sshtools/common/ssh2/KBIPrompt;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-virtual {p0}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getConfirmPasswordPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/sshtools/common/ssh2/KBIPrompt;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p1}, Lcom/sshtools/common/auth/PasswordChangeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    .line 105
    iget-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->username:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->getChangePasswordInstructions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_8
    invoke-virtual {p1}, Lcom/sshtools/common/auth/PasswordChangeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordKeyboardInteractiveProvider;->instruction:Ljava/lang/String;

    :goto_1
    return v2

    .line 67
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
