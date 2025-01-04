#!/usr/bin/env bash


. ./config.sh


mod_iso_archive () {

	#echo 'TODO'

	#return 0


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local iso_file_name="${REF_ISO_FILE_NAME}"
	local new_iso_file_name="new.${iso_file_name}"
	local new_iso_label_name="Ubuntu custom amd64"


	cd "${tmp_dir_path}"


	md5sum iso/.disk/info > iso/md5sum.txt

	sed -i 's|iso/|./|g' iso/md5sum.txt

	#xorriso -as mkisofs -r -V "${new_iso_label_name}" -o "${new_iso_file_name}" -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e boot/grub/efi.img -no-emul-boot -isohybrid-gpt-basdat -isohybrid-apm-hfsplus -isohybrid-mbr /usr/lib/syslinux/bios/isohdpfx.bin iso/boot iso

	#xorriso -as mkisofs -r -V "${new_iso_label_name}" -o "${new_iso_file_name}" -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e boot/grub/efi.img -no-emul-boot -isohybrid-gpt-basdat -isohybrid-apm-hfsplus -isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin iso/boot iso

	
	grub-mkrescue -o ${new_iso_file_name} ./iso


	cd "${OLDPWD}"


}


mod_iso_archive
