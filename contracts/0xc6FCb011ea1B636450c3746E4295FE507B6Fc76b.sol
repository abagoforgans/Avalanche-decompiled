contract main {




// =====================  Runtime code  =====================


address owner;
address kinsAddress;
address devaddr1;
address sub_f19987fcAddress;
array of struct stor4;
array of address stor49998608695278861428516011377974642379663195747246213895566083873703823895505;
array of uint256 stor52260172938195193370382632178925578079922375135247006161961739811358377208785;
array of struct stor70804999730109115293688922746723250822047646116853502746406118500125714377681;

function devaddr1() {
    return devaddr1
}

function owner() {
    return owner
}

function kins() {
    return kinsAddress
}

function sub_f19987fc(?) {
    return sub_f19987fcAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTransactionDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                            mem[197 len 31]
    require arg1 < stor4.length
    return stor4[arg1].field_0, 
           stor4[arg1].field_256,
           stor4[arg1].field_512,
           bool(stor4[arg1].field_672),
           bool(stor4[arg1].field_680),
           bool(stor4[arg1].field_688)
}

function deleteTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                            mem[197 len 31]
    if arg1 >= stor4.length:
        revert with 0, 'invalid index'
    idx = arg1
    while idx < stor4.length - 1:
        require idx + 1 < stor4.length
        require idx < stor4.length
        mem[0] = 4
        stor4[idx].field_0 = stor4[idx].field_768
        stor4[idx].field_256 = stor4[idx].field_1024
        stor4[idx].field_512 = stor4[idx].field_1280
        stor4[idx].field_512 = stor4[idx].field_1280
        stor4[idx].field_672 = Mask(96, 0, bool(stor4[idx].field_1440))
        stor4[idx].field_680 = 0
        stor4[idx].field_512 = stor4[idx].field_1280
        stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
        stor4[idx].field_680 = Mask(88, 0, bool(stor4[idx].field_1448))
        stor4[idx].field_688 = 0
        stor4[idx].field_688 = Mask(80, 16, bool(stor4[idx].field_1440)) >> 16
        stor4[idx].field_512 = stor4[idx].field_1280
        stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
        stor4[idx].field_680 = uint8(bool(stor4[idx].field_1448))
        stor4[idx].field_688 = Mask(80, 0, bool(stor4[idx].field_1456))
        stor4[idx].field_696 = 0
        stor4[idx].field_696 = Mask(72, 24, bool(stor4[idx].field_1440)) >> 24
        stor4[idx].field_696 = Mask(72, 16, bool(stor4[idx].field_1448)) >> 16
        idx = idx + 1
        continue 
    require stor4.length
    stor4[stor4.length].field_0 = 0
    stor4[stor4.length].field_0 = 0
    stor4[stor4.length].field_0 = 0
    stor4.length--
}

function dev(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        if msg.sender == devaddr1:
            if sub_f19987fcAddress == arg1:
                revert with 0, 'cannot assign dev2'
            devaddr1 = arg1
        else:
            if sub_f19987fcAddress != msg.sender:
                revert with 0, 'Only Devs assign a new dev'
            if msg.sender == devaddr1:
                if sub_f19987fcAddress == arg1:
                    revert with 0, 'cannot assign dev2'
                devaddr1 = arg1
            else:
                if msg.sender == sub_f19987fcAddress:
                    if devaddr1 == arg1:
                        revert with 0, 'cannot assign dev1'
                    sub_f19987fcAddress = arg1
    else:
        if msg.sender == devaddr1:
            if sub_f19987fcAddress == arg1:
                revert with 0, 'cannot assign dev2'
            devaddr1 = arg1
        else:
            if sub_f19987fcAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                            mem[197 len 31]
            if msg.sender == devaddr1:
                if sub_f19987fcAddress == arg1:
                    revert with 0, 'cannot assign dev2'
                devaddr1 = arg1
            else:
                if sub_f19987fcAddress != msg.sender:
                    revert with 0, 'Only Devs assign a new dev'
                if msg.sender == devaddr1:
                    if sub_f19987fcAddress == arg1:
                        revert with 0, 'cannot assign dev2'
                    devaddr1 = arg1
                else:
                    if msg.sender == sub_f19987fcAddress:
                        if devaddr1 == arg1:
                            revert with 0, 'cannot assign dev1'
                        sub_f19987fcAddress = arg1
}

function sub_8b89c8bb(?) {
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        if msg.sender == devaddr1:
            stor4.length++
            stor6E8A[stor4.length] = 0
            stor738A[stor4.length] = arg2
            stor9C8A[stor4.length].field_0 = arg1
            stor9C8A[stor4.length].field_160 = 1
            stor9C8A[stor4.length].field_168 = 0
            stor9C8A[stor4.length].field_176 = 1
            stor9C8A[stor4.length].field_184 = 0
            stor9C8A[stor4.length].field_184 = 0
    else:
        if msg.sender == devaddr1:
            stor4.length++
            stor6E8A[stor4.length] = 0
            stor738A[stor4.length] = arg2
            stor9C8A[stor4.length].field_0 = arg1
            stor9C8A[stor4.length].field_160 = 1
            stor9C8A[stor4.length].field_168 = 0
            stor9C8A[stor4.length].field_176 = 1
            stor9C8A[stor4.length].field_184 = 0
            stor9C8A[stor4.length].field_184 = 0
        else:
            if sub_f19987fcAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                            mem[197 len 31]
            if msg.sender == devaddr1:
                stor4.length++
                stor6E8A[stor4.length] = 0
                stor738A[stor4.length] = arg2
                stor9C8A[stor4.length].field_0 = arg1
                stor9C8A[stor4.length].field_160 = 1
                stor9C8A[stor4.length].field_168 = 0
                stor9C8A[stor4.length].field_176 = 1
                stor9C8A[stor4.length].field_184 = 0
                stor9C8A[stor4.length].field_184 = 0
    if msg.sender == sub_f19987fcAddress:
        stor4.length++
        stor6E8A[stor4.length] = 0
        stor738A[stor4.length] = arg2
        stor9C8A[stor4.length].field_0 = arg1
        stor9C8A[stor4.length].field_160 = 0
        stor9C8A[stor4.length].field_168 = 1
        stor9C8A[stor4.length].field_176 = 1
        stor9C8A[stor4.length].field_184 = 0
        stor9C8A[stor4.length].field_184 = 0
    else:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                stor4.length++
                stor6E8A[stor4.length] = 0
                stor738A[stor4.length] = arg2
                stor9C8A[stor4.length].field_0 = arg1
                stor9C8A[stor4.length].field_160 = 0
                stor9C8A[stor4.length].field_168 = 0
                stor9C8A[stor4.length].field_176 = 1
                stor9C8A[stor4.length].field_184 = 0
                stor9C8A[stor4.length].field_184 = 0
    return stor4.length
}

function sub_5aa4becc(?) {
    require calldata.size - 4 >= 96
    if msg.sender == owner:
        if msg.sender == devaddr1:
            stor4.length++
            stor6E8A[stor4.length] = arg1
            stor738A[stor4.length] = arg3
            stor9C8A[stor4.length].field_0 = arg2
            stor9C8A[stor4.length].field_160 = 1
            stor9C8A[stor4.length].field_168 = 0
            stor9C8A[stor4.length].field_176 = 0
            stor9C8A[stor4.length].field_184 = 0
            stor9C8A[stor4.length].field_184 = 0
    else:
        if msg.sender == devaddr1:
            stor4.length++
            stor6E8A[stor4.length] = arg1
            stor738A[stor4.length] = arg3
            stor9C8A[stor4.length].field_0 = arg2
            stor9C8A[stor4.length].field_160 = 1
            stor9C8A[stor4.length].field_168 = 0
            stor9C8A[stor4.length].field_176 = 0
            stor9C8A[stor4.length].field_184 = 0
            stor9C8A[stor4.length].field_184 = 0
        else:
            if sub_f19987fcAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                            mem[197 len 31]
            if msg.sender == devaddr1:
                stor4.length++
                stor6E8A[stor4.length] = arg1
                stor738A[stor4.length] = arg3
                stor9C8A[stor4.length].field_0 = arg2
                stor9C8A[stor4.length].field_160 = 1
                stor9C8A[stor4.length].field_168 = 0
                stor9C8A[stor4.length].field_176 = 0
                stor9C8A[stor4.length].field_184 = 0
                stor9C8A[stor4.length].field_184 = 0
    if msg.sender == sub_f19987fcAddress:
        stor4.length++
        stor6E8A[stor4.length] = arg1
        stor738A[stor4.length] = arg3
        stor9C8A[stor4.length].field_0 = arg2
        stor9C8A[stor4.length].field_160 = 0
        stor9C8A[stor4.length].field_168 = 1
        stor9C8A[stor4.length].field_176 = 0
        stor9C8A[stor4.length].field_184 = 0
        stor9C8A[stor4.length].field_184 = 0
    else:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                stor4.length++
                stor6E8A[stor4.length] = arg1
                stor738A[stor4.length] = arg3
                stor9C8A[stor4.length].field_0 = arg2
                stor9C8A[stor4.length].field_160 = 0
                stor9C8A[stor4.length].field_168 = 0
                stor9C8A[stor4.length].field_176 = 0
                stor9C8A[stor4.length].field_184 = 0
                stor9C8A[stor4.length].field_184 = 0
    return stor4.length
}

function sub_c3d511d2(?) {
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        if msg.sender == devaddr1:
            stor4.length++
            stor6E8A[stor4.length] = kinsAddress
            stor738A[stor4.length] = arg2
            stor9C8A[stor4.length].field_0 = arg1
            stor9C8A[stor4.length].field_160 = 1
            stor9C8A[stor4.length].field_168 = 0
            stor9C8A[stor4.length].field_176 = 0
            stor9C8A[stor4.length].field_184 = 0
            stor9C8A[stor4.length].field_184 = 0
    else:
        if msg.sender == devaddr1:
            stor4.length++
            stor6E8A[stor4.length] = kinsAddress
            stor738A[stor4.length] = arg2
            stor9C8A[stor4.length].field_0 = arg1
            stor9C8A[stor4.length].field_160 = 1
            stor9C8A[stor4.length].field_168 = 0
            stor9C8A[stor4.length].field_176 = 0
            stor9C8A[stor4.length].field_184 = 0
            stor9C8A[stor4.length].field_184 = 0
        else:
            if sub_f19987fcAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                            mem[197 len 31]
            if msg.sender == devaddr1:
                stor4.length++
                stor6E8A[stor4.length] = kinsAddress
                stor738A[stor4.length] = arg2
                stor9C8A[stor4.length].field_0 = arg1
                stor9C8A[stor4.length].field_160 = 1
                stor9C8A[stor4.length].field_168 = 0
                stor9C8A[stor4.length].field_176 = 0
                stor9C8A[stor4.length].field_184 = 0
                stor9C8A[stor4.length].field_184 = 0
    if msg.sender == sub_f19987fcAddress:
        stor4.length++
        stor6E8A[stor4.length] = kinsAddress
        stor738A[stor4.length] = arg2
        stor9C8A[stor4.length].field_0 = arg1
        stor9C8A[stor4.length].field_160 = 0
        stor9C8A[stor4.length].field_168 = 1
        stor9C8A[stor4.length].field_176 = 0
        stor9C8A[stor4.length].field_184 = 0
        stor9C8A[stor4.length].field_184 = 0
    else:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                stor4.length++
                stor6E8A[stor4.length] = kinsAddress
                stor738A[stor4.length] = arg2
                stor9C8A[stor4.length].field_0 = arg1
                stor9C8A[stor4.length].field_160 = 0
                stor9C8A[stor4.length].field_168 = 0
                stor9C8A[stor4.length].field_176 = 0
                stor9C8A[stor4.length].field_184 = 0
                stor9C8A[stor4.length].field_184 = 0
    return stor4.length
}

function signTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        if msg.sender == devaddr1:
            require arg1 < stor4.length
            stor4[arg1].field_672 = 1
            if sub_f19987fcAddress != msg.sender:
                if msg.sender == devaddr1:
                else:
                    if msg.sender == sub_f19987fcAddress:
                    else:
            else:
                require arg1 < stor4.length
                stor4[arg1].field_680 = 1
        else:
            if sub_f19987fcAddress != msg.sender:
                revert with 0, 'Only Devs can sign'
            else:
                if devaddr1 != msg.sender:
                    if sub_f19987fcAddress != msg.sender:
                        if msg.sender == devaddr1:
                        else:
                            if msg.sender == sub_f19987fcAddress:
                            else:
                    else:
                        require arg1 < stor4.length
                        stor4[arg1].field_680 = 1
                else:
                    require arg1 < stor4.length
                    stor4[arg1].field_672 = 1
                    if sub_f19987fcAddress != msg.sender:
                        if msg.sender == devaddr1:
                        else:
                            if msg.sender == sub_f19987fcAddress:
                            else:
                    else:
                        require arg1 < stor4.length
                        stor4[arg1].field_680 = 1
    else:
        if msg.sender == devaddr1:
            require arg1 < stor4.length
            stor4[arg1].field_672 = 1
            if sub_f19987fcAddress != msg.sender:
                if msg.sender == devaddr1:
                else:
                    if msg.sender == sub_f19987fcAddress:
                    else:
            else:
                require arg1 < stor4.length
                stor4[arg1].field_680 = 1
        else:
            if sub_f19987fcAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                            mem[197 len 31]
            else:
                if msg.sender == devaddr1:
                    require arg1 < stor4.length
                    stor4[arg1].field_672 = 1
                    if sub_f19987fcAddress != msg.sender:
                        if msg.sender == devaddr1:
                        else:
                            if msg.sender == sub_f19987fcAddress:
                            else:
                    else:
                        require arg1 < stor4.length
                        stor4[arg1].field_680 = 1
                else:
                    if sub_f19987fcAddress != msg.sender:
                        revert with 0, 'Only Devs can sign'
                    else:
                        if devaddr1 != msg.sender:
                            if sub_f19987fcAddress != msg.sender:
                                if msg.sender == devaddr1:
                                else:
                                    if msg.sender == sub_f19987fcAddress:
                                    else:
                            else:
                                require arg1 < stor4.length
                                stor4[arg1].field_680 = 1
                        else:
                            require arg1 < stor4.length
                            stor4[arg1].field_672 = 1
                            if sub_f19987fcAddress != msg.sender:
                                if msg.sender == devaddr1:
                                else:
                                    if msg.sender == sub_f19987fcAddress:
                                    else:
                            else:
                                require arg1 < stor4.length
                                stor4[arg1].field_680 = 1
}

function sub_391c75d7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                            mem[197 len 31]
    require arg1 < stor4.length
    if stor4[arg1].field_688:
        if eth.balance(this.address) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x9b62616c616e6365206e6f7420656e6f75676820666f722074686973207472616e73616374696f,
                        mem[203 len 25]
        if msg.sender == devaddr1:
            if bool(stor4[arg1].field_680) != 1:
                revert with 0, 'dev2 sign required'
            call stor4[arg1].field_512 with:
               value stor4[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 >= stor4.length:
                revert with 0, 'invalid index'
            idx = arg1
            while idx < stor4.length - 1:
                require idx + 1 < stor4.length
                require idx < stor4.length
                mem[0] = 4
                stor4[idx].field_0 = stor4[idx].field_768
                stor4[idx].field_256 = stor4[idx].field_1024
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = Mask(96, 0, bool(stor4[idx].field_1440))
                stor4[idx].field_680 = 0
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                stor4[idx].field_680 = Mask(88, 0, bool(stor4[idx].field_1448))
                stor4[idx].field_688 = 0
                stor4[idx].field_688 = Mask(80, 16, bool(stor4[idx].field_1440)) >> 16
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                stor4[idx].field_680 = uint8(bool(stor4[idx].field_1448))
                stor4[idx].field_688 = Mask(80, 0, bool(stor4[idx].field_1456))
                stor4[idx].field_696 = 0
                stor4[idx].field_696 = Mask(72, 24, bool(stor4[idx].field_1440)) >> 24
                stor4[idx].field_696 = Mask(72, 16, bool(stor4[idx].field_1448)) >> 16
                idx = idx + 1
                continue 
            require stor4.length
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4.length--
        if msg.sender == sub_f19987fcAddress:
            if bool(stor4[arg1].field_672) != 1:
                revert with 0, 'dev1 sign required'
            call stor4[arg1].field_512 with:
               value stor4[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 >= stor4.length:
                revert with 0, 'invalid index'
            idx = arg1
            while idx < stor4.length - 1:
                require idx + 1 < stor4.length
                require idx < stor4.length
                mem[0] = 4
                stor4[idx].field_0 = stor4[idx].field_768
                stor4[idx].field_256 = stor4[idx].field_1024
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = Mask(96, 0, bool(stor4[idx].field_1440))
                stor4[idx].field_680 = 0
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                stor4[idx].field_680 = Mask(88, 0, bool(stor4[idx].field_1448))
                stor4[idx].field_688 = 0
                stor4[idx].field_688 = Mask(80, 16, bool(stor4[idx].field_1440)) >> 16
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                stor4[idx].field_680 = uint8(bool(stor4[idx].field_1448))
                stor4[idx].field_688 = Mask(80, 0, bool(stor4[idx].field_1456))
                stor4[idx].field_696 = 0
                stor4[idx].field_696 = Mask(72, 24, bool(stor4[idx].field_1440)) >> 24
                stor4[idx].field_696 = Mask(72, 16, bool(stor4[idx].field_1448)) >> 16
                idx = idx + 1
                continue 
            require stor4.length
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4.length--
        else:
            if devaddr1 != msg.sender:
                if sub_f19987fcAddress != msg.sender:
                    if not stor4[arg1].field_672:
                        revert with 0, 'both devs have to sign!'
                    if not stor4[arg1].field_680:
                        revert with 0, 'both devs have to sign!'
                    call stor4[arg1].field_512 with:
                       value stor4[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 >= stor4.length:
                        revert with 0, 'invalid index'
                    idx = arg1
                    while idx < stor4.length - 1:
                        require idx + 1 < stor4.length
                        require idx < stor4.length
                        mem[0] = 4
                        stor4[idx].field_0 = stor4[idx].field_768
                        stor4[idx].field_256 = stor4[idx].field_1024
                        stor4[idx].field_512 = stor4[idx].field_1280
                        stor4[idx].field_512 = stor4[idx].field_1280
                        stor4[idx].field_672 = Mask(96, 0, bool(stor4[idx].field_1440))
                        stor4[idx].field_680 = 0
                        stor4[idx].field_512 = stor4[idx].field_1280
                        stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                        stor4[idx].field_680 = Mask(88, 0, bool(stor4[idx].field_1448))
                        stor4[idx].field_688 = 0
                        stor4[idx].field_688 = Mask(80, 16, bool(stor4[idx].field_1440)) >> 16
                        stor4[idx].field_512 = stor4[idx].field_1280
                        stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                        stor4[idx].field_680 = uint8(bool(stor4[idx].field_1448))
                        stor4[idx].field_688 = Mask(80, 0, bool(stor4[idx].field_1456))
                        stor4[idx].field_696 = 0
                        stor4[idx].field_696 = Mask(72, 24, bool(stor4[idx].field_1440)) >> 24
                        stor4[idx].field_696 = Mask(72, 16, bool(stor4[idx].field_1448)) >> 16
                        idx = idx + 1
                        continue 
                    require stor4.length
                    stor4[stor4.length].field_0 = 0
                    stor4[stor4.length].field_0 = 0
                    stor4[stor4.length].field_0 = 0
                    stor4.length--
    else:
        require ext_code.size(stor4[arg1].field_0)
        staticcall stor4[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor4[arg1].field_256 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x9d546f6b656e2062616c616e6365206e6f7420656e6f75676820666f722074686973207472616e73616374696f,
                        mem[209 len 19]
        if msg.sender == devaddr1:
            if bool(stor4[arg1].field_680) != 1:
                revert with 0, 'dev2 sign required'
            require ext_code.size(stor4[arg1].field_0)
            call stor4[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args stor4[arg1].field_512, stor4[arg1].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 >= stor4.length:
                revert with 0, 'invalid index'
            idx = arg1
            while idx < stor4.length - 1:
                require idx + 1 < stor4.length
                require idx < stor4.length
                mem[0] = 4
                stor4[idx].field_0 = stor4[idx].field_768
                stor4[idx].field_256 = stor4[idx].field_1024
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = Mask(96, 0, bool(stor4[idx].field_1440))
                stor4[idx].field_680 = 0
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                stor4[idx].field_680 = Mask(88, 0, bool(stor4[idx].field_1448))
                stor4[idx].field_688 = 0
                stor4[idx].field_688 = Mask(80, 16, bool(stor4[idx].field_1440)) >> 16
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                stor4[idx].field_680 = uint8(bool(stor4[idx].field_1448))
                stor4[idx].field_688 = Mask(80, 0, bool(stor4[idx].field_1456))
                stor4[idx].field_696 = 0
                stor4[idx].field_696 = Mask(72, 24, bool(stor4[idx].field_1440)) >> 24
                stor4[idx].field_696 = Mask(72, 16, bool(stor4[idx].field_1448)) >> 16
                idx = idx + 1
                continue 
            require stor4.length
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4.length--
        if msg.sender == sub_f19987fcAddress:
            if bool(stor4[arg1].field_672) != 1:
                revert with 0, 'dev1 sign required'
            require ext_code.size(stor4[arg1].field_0)
            call stor4[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args stor4[arg1].field_512, stor4[arg1].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 >= stor4.length:
                revert with 0, 'invalid index'
            idx = arg1
            while idx < stor4.length - 1:
                require idx + 1 < stor4.length
                require idx < stor4.length
                mem[0] = 4
                stor4[idx].field_0 = stor4[idx].field_768
                stor4[idx].field_256 = stor4[idx].field_1024
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = Mask(96, 0, bool(stor4[idx].field_1440))
                stor4[idx].field_680 = 0
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                stor4[idx].field_680 = Mask(88, 0, bool(stor4[idx].field_1448))
                stor4[idx].field_688 = 0
                stor4[idx].field_688 = Mask(80, 16, bool(stor4[idx].field_1440)) >> 16
                stor4[idx].field_512 = stor4[idx].field_1280
                stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                stor4[idx].field_680 = uint8(bool(stor4[idx].field_1448))
                stor4[idx].field_688 = Mask(80, 0, bool(stor4[idx].field_1456))
                stor4[idx].field_696 = 0
                stor4[idx].field_696 = Mask(72, 24, bool(stor4[idx].field_1440)) >> 24
                stor4[idx].field_696 = Mask(72, 16, bool(stor4[idx].field_1448)) >> 16
                idx = idx + 1
                continue 
            require stor4.length
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4.length--
        else:
            if devaddr1 != msg.sender:
                if sub_f19987fcAddress != msg.sender:
                    if not stor4[arg1].field_672:
                        revert with 0, 'both devs have to sign!'
                    if not stor4[arg1].field_680:
                        revert with 0, 'both devs have to sign!'
                    require ext_code.size(stor4[arg1].field_0)
                    call stor4[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4[arg1].field_512, stor4[arg1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 >= stor4.length:
                        revert with 0, 'invalid index'
                    idx = arg1
                    while idx < stor4.length - 1:
                        require idx + 1 < stor4.length
                        require idx < stor4.length
                        mem[0] = 4
                        stor4[idx].field_0 = stor4[idx].field_768
                        stor4[idx].field_256 = stor4[idx].field_1024
                        stor4[idx].field_512 = stor4[idx].field_1280
                        stor4[idx].field_512 = stor4[idx].field_1280
                        stor4[idx].field_672 = Mask(96, 0, bool(stor4[idx].field_1440))
                        stor4[idx].field_680 = 0
                        stor4[idx].field_512 = stor4[idx].field_1280
                        stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                        stor4[idx].field_680 = Mask(88, 0, bool(stor4[idx].field_1448))
                        stor4[idx].field_688 = 0
                        stor4[idx].field_688 = Mask(80, 16, bool(stor4[idx].field_1440)) >> 16
                        stor4[idx].field_512 = stor4[idx].field_1280
                        stor4[idx].field_672 = uint8(bool(stor4[idx].field_1440))
                        stor4[idx].field_680 = uint8(bool(stor4[idx].field_1448))
                        stor4[idx].field_688 = Mask(80, 0, bool(stor4[idx].field_1456))
                        stor4[idx].field_696 = 0
                        stor4[idx].field_696 = Mask(72, 24, bool(stor4[idx].field_1440)) >> 24
                        stor4[idx].field_696 = Mask(72, 16, bool(stor4[idx].field_1448)) >> 16
                        idx = idx + 1
                        continue 
                    require stor4.length
                    stor4[stor4.length].field_0 = 0
                    stor4[stor4.length].field_0 = 0
                    stor4[stor4.length].field_0 = 0
                    stor4.length--
}



}
