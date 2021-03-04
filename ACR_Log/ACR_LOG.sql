-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mar 04, 2021 alle 23:52
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ACR_LOG`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Attivita`
--

CREATE TABLE `Attivita` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `obiettivo` varchar(100) NOT NULL,
  `descrizione` text NOT NULL,
  `idClasse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Classi`
--

CREATE TABLE `Classi` (
  `id` int(11) NOT NULL,
  `nome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Consegna`
--

CREATE TABLE `Consegna` (
  `idRagazzo` int(11) NOT NULL,
  `idPartecipazione` int(11) NOT NULL,
  `quota_versata` double NOT NULL,
  `autorizzazioneFirmata` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Educatori`
--

CREATE TABLE `Educatori` (
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is_resp` tinyint(1) NOT NULL,
  `is_resp_sett` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `effettuaIscrizione`
--

CREATE TABLE `effettuaIscrizione` (
  `idRagazzo` int(11) NOT NULL,
  `idIscrizione` int(11) NOT NULL,
  `quota_versata` double NOT NULL,
  `foglioFirmato` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Feste`
--

CREATE TABLE `Feste` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `figlioDi`
--

CREATE TABLE `figlioDi` (
  `idRagazzo` int(11) NOT NULL,
  `idGenitore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `frequentaClassi`
--

CREATE TABLE `frequentaClassi` (
  `anno_associativo` varchar(10) NOT NULL,
  `idRagazzo` int(11) NOT NULL,
  `idClasse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Genitori`
--

CREATE TABLE `Genitori` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `numero_telefono` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `haEducatori`
--

CREATE TABLE `haEducatori` (
  `anno_associativo` varchar(10) NOT NULL,
  `idClasse` int(11) NOT NULL,
  `idEducatore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Iscrizioni`
--

CREATE TABLE `Iscrizioni` (
  `id` int(11) NOT NULL,
  `costo` double NOT NULL,
  `anno_associativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Materiale`
--

CREATE TABLE `Materiale` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `quantita` float NOT NULL,
  `idAttivita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `PartecipazioniFesta`
--

CREATE TABLE `PartecipazioniFesta` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `costo` double NOT NULL,
  `luogo` varchar(100) NOT NULL,
  `idFesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `prendeTessera`
--

CREATE TABLE `prendeTessera` (
  `quotaVersata` double NOT NULL,
  `idRagazzo` int(11) NOT NULL,
  `idTessera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Ragazzi`
--

CREATE TABLE `Ragazzi` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `data_nascita` date NOT NULL,
  `via_abitazione` varchar(70) NOT NULL,
  `comune_nascita` varchar(70) NOT NULL,
  `citta_residenza` varchar(70) NOT NULL,
  `provincia_nascita` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `siPresenta`
--

CREATE TABLE `siPresenta` (
  `idRagazzo` int(11) NOT NULL,
  `idAttivita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Spese`
--

CREATE TABLE `Spese` (
  `id` int(11) NOT NULL,
  `idClasse` int(11) NOT NULL,
  `ragione` varchar(90) NOT NULL,
  `quantita` float NOT NULL,
  `costo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Tessera`
--

CREATE TABLE `Tessera` (
  `id` int(11) NOT NULL,
  `anno_associativo` varchar(10) NOT NULL,
  `nome_tessera` varchar(80) NOT NULL,
  `costo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Attivita`
--
ALTER TABLE `Attivita`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Classi`
--
ALTER TABLE `Classi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Educatori`
--
ALTER TABLE `Educatori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Feste`
--
ALTER TABLE `Feste`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Genitori`
--
ALTER TABLE `Genitori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Materiale`
--
ALTER TABLE `Materiale`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `PartecipazioniFesta`
--
ALTER TABLE `PartecipazioniFesta`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Ragazzi`
--
ALTER TABLE `Ragazzi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Spese`
--
ALTER TABLE `Spese`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `Tessera`
--
ALTER TABLE `Tessera`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Attivita`
--
ALTER TABLE `Attivita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Classi`
--
ALTER TABLE `Classi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Educatori`
--
ALTER TABLE `Educatori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Feste`
--
ALTER TABLE `Feste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Genitori`
--
ALTER TABLE `Genitori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Materiale`
--
ALTER TABLE `Materiale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `PartecipazioniFesta`
--
ALTER TABLE `PartecipazioniFesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Ragazzi`
--
ALTER TABLE `Ragazzi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Spese`
--
ALTER TABLE `Spese`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Tessera`
--
ALTER TABLE `Tessera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
