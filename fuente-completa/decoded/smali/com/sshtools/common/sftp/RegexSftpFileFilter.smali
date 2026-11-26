.class public Lcom/sshtools/common/sftp/RegexSftpFileFilter;
.super Ljava/lang/Object;
.source "RegexSftpFileFilter.java"

# interfaces
.implements Lcom/sshtools/common/sftp/SftpFileFilter;


# instance fields
.field p:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/RegexSftpFileFilter;->p:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sshtools/common/sftp/RegexSftpFileFilter;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
