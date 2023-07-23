-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               PostgreSQL 15.3, compiled by Visual C++ build 1914, 64-bit
-- Server OS:                    
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table public.failed_jobs
CREATE TABLE IF NOT EXISTS "failed_jobs" (
	"id" BIGINT NOT NULL DEFAULT 'nextval(''failed_jobs_id_seq''::regclass)',
	"uuid" VARCHAR(255) NOT NULL,
	"connection" TEXT NOT NULL,
	"queue" TEXT NOT NULL,
	"payload" TEXT NOT NULL,
	"exception" TEXT NOT NULL,
	"failed_at" TIMESTAMP NOT NULL DEFAULT 'CURRENT_TIMESTAMP',
	PRIMARY KEY ("id"),
	UNIQUE INDEX "failed_jobs_uuid_unique" ("uuid")
);

-- Dumping data for table public.failed_jobs: -1 rows
/*!40000 ALTER TABLE "failed_jobs" DISABLE KEYS */;
/*!40000 ALTER TABLE "failed_jobs" ENABLE KEYS */;

-- Dumping structure for table public.migrations
CREATE TABLE IF NOT EXISTS "migrations" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''migrations_id_seq''::regclass)',
	"migration" VARCHAR(255) NOT NULL,
	"batch" INTEGER NOT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.migrations: -1 rows
/*!40000 ALTER TABLE "migrations" DISABLE KEYS */;
-- Dumping structure for table public.password_reset_tokens
CREATE TABLE IF NOT EXISTS "password_reset_tokens" (
	"email" VARCHAR(255) NOT NULL,
	"token" VARCHAR(255) NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("email")
);

-- Dumping data for table public.password_reset_tokens: -1 rows
/*!40000 ALTER TABLE "password_reset_tokens" DISABLE KEYS */;
/*!40000 ALTER TABLE "password_reset_tokens" ENABLE KEYS */;

-- Dumping structure for table public.personal_access_tokens
CREATE TABLE IF NOT EXISTS "personal_access_tokens" (
	"id" BIGINT NOT NULL DEFAULT 'nextval(''personal_access_tokens_id_seq''::regclass)',
	"tokenable_type" VARCHAR(255) NOT NULL,
	"tokenable_id" BIGINT NOT NULL,
	"name" VARCHAR(255) NOT NULL,
	"token" VARCHAR(64) NOT NULL,
	"abilities" TEXT NULL DEFAULT NULL,
	"last_used_at" TIMESTAMP NULL DEFAULT NULL,
	"expires_at" TIMESTAMP NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT NULL,
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id"),
	INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" ("tokenable_type", "tokenable_id"),
	UNIQUE INDEX "personal_access_tokens_token_unique" ("token")
);

-- Dumping data for table public.personal_access_tokens: -1 rows
/*!40000 ALTER TABLE "personal_access_tokens" DISABLE KEYS */;
/*!40000 ALTER TABLE "personal_access_tokens" ENABLE KEYS */;

-- Dumping structure for table public.todos
CREATE TABLE IF NOT EXISTS "todos" (
	"id" BIGINT NOT NULL DEFAULT 'nextval(''todos_id_seq''::regclass)',
	"title" VARCHAR(255) NOT NULL,
	"description" VARCHAR(255) NOT NULL,
	"status" BOOLEAN NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT NULL,
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.todos: -1 rows
/*!40000 ALTER TABLE "todos" DISABLE KEYS */;
/*!40000 ALTER TABLE "todos" ENABLE KEYS */;

-- Dumping structure for table public.users
CREATE TABLE IF NOT EXISTS "users" (
	"id" BIGINT NOT NULL DEFAULT 'nextval(''users_id_seq''::regclass)',
	"name" VARCHAR(255) NOT NULL,
	"email" VARCHAR(255) NOT NULL,
	"email_verified_at" TIMESTAMP NULL DEFAULT NULL,
	"password" VARCHAR(255) NOT NULL,
	"remember_token" VARCHAR(100) NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT NULL,
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id"),
	UNIQUE INDEX "users_email_unique" ("email")
);

-- Dumping data for table public.users: -1 rows
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
/*!40000 ALTER TABLE "users" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
