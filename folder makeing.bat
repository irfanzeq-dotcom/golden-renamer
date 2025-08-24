@echo off
set BASE=E:\Golden-Dir

:: Main folders
mkdir "%BASE%\personal"
mkdir "%BASE%\work"
mkdir "%BASE%\homelab"
mkdir "%BASE%\reference-library"
mkdir "%BASE%\_old-archives"
mkdir "%BASE%\_unsorted"
mkdir "%BASE%\_archive"

:: Personal
mkdir "%BASE%\personal\finance\taxes\2023"
mkdir "%BASE%\personal\finance\taxes\2024"
mkdir "%BASE%\personal\finance\bank-statements\Axis Bank"
mkdir "%BASE%\personal\finance\bank-statements\BOB"
mkdir "%BASE%\personal\finance\insurance"
mkdir "%BASE%\personal\finance\investments\demat"
mkdir "%BASE%\personal\finance\investments\ipo"
mkdir "%BASE%\personal\education\transcripts"
mkdir "%BASE%\personal\education\certificates"
mkdir "%BASE%\personal\education\projects"
mkdir "%BASE%\personal\utilities-and-bills\electricity"
mkdir "%BASE%\personal\utilities-and-bills\water"
mkdir "%BASE%\personal\utilities-and-bills\broadband"
mkdir "%BASE%\personal\utilities-and-bills\mobile"
mkdir "%BASE%\personal\health\reports"
mkdir "%BASE%\personal\health\prescriptions"
mkdir "%BASE%\personal\health\vaccines"
mkdir "%BASE%\personal\property-and-vehicles\rental-agreements"
mkdir "%BASE%\personal\property-and-vehicles\vehicle-rc"
mkdir "%BASE%\personal\property-and-vehicles\service-records"
mkdir "%BASE%\personal\receipts\electronics"
mkdir "%BASE%\personal\receipts\appliances"

:: Work
mkdir "%BASE%\work\_inbox"
mkdir "%BASE%\work\_templates"
mkdir "%BASE%\work\clients\Indusind-Bank\000_admin"
mkdir "%BASE%\work\clients\Indusind-Bank\010_requirements"
mkdir "%BASE%\work\clients\Indusind-Bank\020_design"
mkdir "%BASE%\work\clients\Indusind-Bank\030_delivery"
mkdir "%BASE%\work\clients\Indusind-Bank\040_invoices"
mkdir "%BASE%\work\clients\globex"
mkdir "%BASE%\work\projects\project-alpha\00_brief"
mkdir "%BASE%\work\projects\project-alpha\10_research"
mkdir "%BASE%\work\projects\project-alpha\20_design"
mkdir "%BASE%\work\projects\project-alpha\30_build"
mkdir "%BASE%\work\projects\project-alpha\40_test"
mkdir "%BASE%\work\projects\project-alpha\90_archive"
mkdir "%BASE%\work\projects\project-beta"
mkdir "%BASE%\work\meetings\2025"

:: Homelab
mkdir "%BASE%\homelab\_inbox"
mkdir "%BASE%\homelab\00_inventory"
mkdir "%BASE%\homelab\10_proxmox\designs"
mkdir "%BASE%\homelab\10_proxmox\backups-and-restore"
mkdir "%BASE%\homelab\10_proxmox\vm-notes\pfsense"
mkdir "%BASE%\homelab\10_proxmox\vm-notes\mailcow"
mkdir "%BASE%\homelab\10_proxmox\alerts-and-monitoring"
mkdir "%BASE%\homelab\20_storage_truenas\zfs-pools"
mkdir "%BASE%\homelab\20_storage_truenas\shares\nfs"
mkdir "%BASE%\homelab\20_storage_truenas\shares\smb"
mkdir "%BASE%\homelab\20_storage_truenas\snapshots"
mkdir "%BASE%\homelab\30_network\firewall-rules"
mkdir "%BASE%\homelab\40_services\mailcow"
mkdir "%BASE%\homelab\40_services\monitoring"
mkdir "%BASE%\homelab\40_services\media"
mkdir "%BASE%\homelab\50_docs-and-runbooks"

:: Reference library
mkdir "%BASE%\reference-library\standards"
mkdir "%BASE%\reference-library\manuals"
mkdir "%BASE%\reference-library\books"
mkdir "%BASE%\reference-library\research-papers"

:: Old archives
mkdir "%BASE%\_old-archives\driveC_docs"
mkdir "%BASE%\_old-archives\downloads_backup"
mkdir "%BASE%\_old-archives\old-external-hdd"
mkdir "%BASE%\_old-archives\misc"

:: Unsorted
mkdir "%BASE%\_unsorted\personal"
mkdir "%BASE%\_unsorted\work"
mkdir "%BASE%\_unsorted\homelab"
mkdir "%BASE%\_unsorted\reference"

:: Archive
mkdir "%BASE%\_archive\personal"
mkdir "%BASE%\_archive\work"
mkdir "%BASE%\_archive\homelab"
mkdir "%BASE%\_archive\reference"

echo.
echo Golden-Dir structure created successfully!
pause
