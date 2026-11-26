.class public Lorg/apache/commons/net/smtp/SimpleSMTPHeader;
.super Ljava/lang/Object;
.source "SimpleSMTPHeader.java"


# instance fields
.field private cc:Ljava/lang/StringBuffer;

.field private final from:Ljava/lang/String;

.field private hasHeaderDate:Z

.field private final headerFields:Ljava/lang/StringBuffer;

.field private final subject:Ljava/lang/String;

.field private final to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 69
    iput-object p2, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->to:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->from:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->subject:Ljava/lang/String;

    .line 72
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->headerFields:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->cc:Ljava/lang/StringBuffer;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "From cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addCC(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->cc:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->cc:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 85
    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->cc:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->hasHeaderDate:Z

    if-nez v0, :cond_0

    const-string v0, "Date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->hasHeaderDate:Z

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->headerFields:Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->headerFields:Ljava/lang/StringBuffer;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 126
    iget-boolean v2, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->hasHeaderDate:Z

    if-nez v2, :cond_0

    .line 127
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 130
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->to:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 136
    const-string v1, "To: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->to:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->cc:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3

    .line 140
    const-string v1, "Cc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->cc:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->subject:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 144
    const-string v1, "Subject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->subject:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0xa

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
