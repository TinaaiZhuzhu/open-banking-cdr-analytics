DROP TABLE IF EXISTS consent_journey;

CREATE TABLE consent_journey (
    customer_id INTEGER,
    consent_id VARCHAR(50),
    created_datetime TIMESTAMP,
    month VARCHAR(7),
    adr_provider VARCHAR(100),
    data_holder VARCHAR(100),
    product_type VARCHAR(100),
    data_cluster_requested VARCHAR(100),
    customer_segment VARCHAR(50),
    channel VARCHAR(50),
    device VARCHAR(30),
    authentication_method VARCHAR(30),
    redirect_type VARCHAR(50),
    otp_sent CHAR(1),
    otp_success CHAR(1),
    consent_status VARCHAR(30),
    drop_off_stage VARCHAR(80),
    session_duration_seconds INTEGER,
    completion_time_seconds INTEGER,
    completed_datetime TIMESTAMP,
    consent_duration_days INTEGER,
    cdr_standard_version VARCHAR(20),
    error_reason VARCHAR(100)
);