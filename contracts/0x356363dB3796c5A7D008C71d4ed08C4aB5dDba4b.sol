contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
mapping of uint256 vIPFee;
address stor3;
uint256 sub_fdbe6667;
uint8 sub_839faa91;

function getVIPFee() {
    return vIPFee[0], vIPFee[1], vIPFee[2]
}

function sub_839faa91(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(sub_839faa91)
}

function owner() {
    return owner
}

function sub_fdbe6667(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_fdbe6667
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function getVIPInfo(address arg1) {
    require calldata.size - 4 >= 32
    return stor1[address(arg1)], block.timestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_08fcd9c3(?) {
    require calldata.size - 4 >= 32
    if sub_839faa91:
        if stor1[address(arg1)] <= 1:
            return 1
        else:
            return 0
    else:
        return 0
}

function setOpenFree(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_839faa91 = uint8(arg1)
    return bool(sub_839faa91)
}

function sub_464dcf63(?) payable {
    if not sub_839faa91:
        revert with 0, 'Cannot register FreeVIP'
    if stor1[address(msg.sender)] > 1:
        revert with 0, 'Cannot register FreeVIP'
    stor1[address(msg.sender)] = block.timestamp + (72 * 24 * 3600)
    return 0
}

function sub_ccd5ee23(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 100:
        revert with 0, 'ratio mast <100'
    if arg1 < 0:
        revert with 0, 'ratio mast >= 0'
    sub_fdbe6667 = arg1
    return 1
}

function sub_63e8ecec(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'fee1 mast >0'
    if arg2 <= 0:
        revert with 0, 'fee2 mast >0'
    if arg3 <= 0:
        revert with 0, 'fee3 mast >0'
    vIPFee[0] = arg1
    vIPFee[1] = arg2
    vIPFee[2] = arg3
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_22b5d6d8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    return 1
}

function claimTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
    return eth.balance(this.address)
}

function sub_7b5ae504(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 != 1:
        if arg2 != 2:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[mem[(32 * idx) + 140 len 20]] = block.timestamp + (24 * 3600)
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[mem[(32 * idx) + 140 len 20]] = block.timestamp + (876000 * 24 * 3600)
                idx = idx + 1
                continue 
    else:
        if arg2 != 2:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[mem[(32 * idx) + 140 len 20]] = block.timestamp + (720 * 24 * 3600)
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[mem[(32 * idx) + 140 len 20]] = block.timestamp + (876000 * 24 * 3600)
                idx = idx + 1
                continue 
    return 1
}

function registerVIP(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if vIPFee[arg2] <= 0:
        revert with 0, 'error in VIPtype'
    if msg.value < vIPFee[arg2]:
        revert with 0, 'VIPFee is insufficient'
    if arg2 != 1:
        if arg2 != 2:
            if stor1[address(arg1)] <= block.timestamp:
                stor1[address(arg1)] = block.timestamp + (24 * 3600)
                if arg3 == owner:
                    call stor3 with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 232 len 29]
                else:
                    if vIPFee[arg2] * sub_fdbe6667 / 100 <= 0:
                        call stor3 with:
                           value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 232 len 29]
                    else:
                        if vIPFee[arg2] * sub_fdbe6667 / 100 >= vIPFee[arg2]:
                            call stor3 with:
                               value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 232 len 29]
                        else:
                            call arg3 with:
                               value vIPFee[arg2] * sub_fdbe6667 / 100 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                                call stor3 with:
                                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[263 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 264 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 232 len 29]
                                call stor3 with:
                                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 264 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 265 len 29]
                ('bool', 'ext_call.success')
                return (block.timestamp + (24 * 3600))
            stor1[address(arg1)] += 24 * 3600
            if arg3 == owner:
                call stor3 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 232 len 29]
            else:
                if vIPFee[arg2] * sub_fdbe6667 / 100 <= 0:
                    call stor3 with:
                       value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 232 len 29]
                else:
                    if vIPFee[arg2] * sub_fdbe6667 / 100 >= vIPFee[arg2]:
                        call stor3 with:
                           value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 232 len 29]
                    else:
                        call arg3 with:
                           value vIPFee[arg2] * sub_fdbe6667 / 100 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                            call stor3 with:
                               value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[263 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 264 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 232 len 29]
                            call stor3 with:
                               value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 264 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 265 len 29]
            ('bool', 'ext_call.success')
            return (stor1[address(arg1)] + (24 * 3600))
        if stor1[address(arg1)] <= block.timestamp:
            stor1[address(arg1)] = block.timestamp + (876000 * 24 * 3600)
            if arg3 == owner:
                call stor3 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 232 len 29]
            else:
                if vIPFee[arg2] * sub_fdbe6667 / 100 <= 0:
                    call stor3 with:
                       value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 232 len 29]
                else:
                    if vIPFee[arg2] * sub_fdbe6667 / 100 >= vIPFee[arg2]:
                        call stor3 with:
                           value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 232 len 29]
                    else:
                        call arg3 with:
                           value vIPFee[arg2] * sub_fdbe6667 / 100 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                            call stor3 with:
                               value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[263 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 264 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[ceil32(return_data.size) + 232 len 29]
                            call stor3 with:
                               value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 264 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 265 len 29]
            ('bool', 'ext_call.success')
            return (block.timestamp + (876000 * 24 * 3600))
    else:
        if arg2 != 2:
            if stor1[address(arg1)] <= block.timestamp:
                stor1[address(arg1)] = block.timestamp + (720 * 24 * 3600)
                if arg3 == owner:
                    call stor3 with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 232 len 29]
                    ('bool', 'ext_call.success')
                    return (block.timestamp + (720 * 24 * 3600))
                if vIPFee[arg2] * sub_fdbe6667 / 100 <= 0:
                    call stor3 with:
                       value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 232 len 29]
                    ('bool', 'ext_call.success')
                    return (block.timestamp + (720 * 24 * 3600))
                if vIPFee[arg2] * sub_fdbe6667 / 100 >= vIPFee[arg2]:
                    call stor3 with:
                       value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 232 len 29]
                    ('bool', 'ext_call.success')
                    return (block.timestamp + (720 * 24 * 3600))
                call arg3 with:
                   value vIPFee[arg2] * sub_fdbe6667 / 100 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                    call stor3 with:
                       value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[263 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 264 len 29]
                    ('bool', 'ext_call.success')
                    return (block.timestamp + (720 * 24 * 3600))
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 232 len 29]
                call stor3 with:
                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 264 len 29]
                    return (block.timestamp + (720 * 24 * 3600))
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[(2 * ceil32(return_data.size)) + 265 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
                return block.timestamp + (720 * 24 * 3600), 
                       mem[(2 * ceil32(return_data.size)) + 194 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            stor1[address(arg1)] += 720 * 24 * 3600
            if arg3 == owner:
                call stor3 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 232 len 29]
                ('bool', 'ext_call.success')
                return (stor1[address(arg1)] + (720 * 24 * 3600))
            if vIPFee[arg2] * sub_fdbe6667 / 100 <= 0:
                call stor3 with:
                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 232 len 29]
                ('bool', 'ext_call.success')
                return (stor1[address(arg1)] + (720 * 24 * 3600))
            if vIPFee[arg2] * sub_fdbe6667 / 100 >= vIPFee[arg2]:
                call stor3 with:
                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 232 len 29]
                ('bool', 'ext_call.success')
                return (stor1[address(arg1)] + (720 * 24 * 3600))
            call arg3 with:
               value vIPFee[arg2] * sub_fdbe6667 / 100 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                call stor3 with:
                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[263 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 264 len 29]
                ('bool', 'ext_call.success')
                return (stor1[address(arg1)] + (720 * 24 * 3600))
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 232 len 29]
            call stor3 with:
               value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 264 len 29]
                return (stor1[address(arg1)] + (720 * 24 * 3600))
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(2 * ceil32(return_data.size)) + 265 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
            return stor1[address(arg1)] + (720 * 24 * 3600), 
                   mem[(2 * ceil32(return_data.size)) + 194 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if stor1[address(arg1)] <= block.timestamp:
            stor1[address(arg1)] = block.timestamp + (876000 * 24 * 3600)
            if arg3 == owner:
                call stor3 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 232 len 29]
                ('bool', 'ext_call.success')
                return (block.timestamp + (876000 * 24 * 3600))
            if vIPFee[arg2] * sub_fdbe6667 / 100 <= 0:
                call stor3 with:
                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 232 len 29]
                ('bool', 'ext_call.success')
                return (block.timestamp + (876000 * 24 * 3600))
            if vIPFee[arg2] * sub_fdbe6667 / 100 >= vIPFee[arg2]:
                call stor3 with:
                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 232 len 29]
                ('bool', 'ext_call.success')
                return (block.timestamp + (876000 * 24 * 3600))
            call arg3 with:
               value vIPFee[arg2] * sub_fdbe6667 / 100 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
                call stor3 with:
                   value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[263 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 264 len 29]
                ('bool', 'ext_call.success')
                return (block.timestamp + (876000 * 24 * 3600))
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 232 len 29]
            call stor3 with:
               value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 264 len 29]
                return (block.timestamp + (876000 * 24 * 3600))
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(2 * ceil32(return_data.size)) + 265 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
            return block.timestamp + (876000 * 24 * 3600), 
                   mem[(2 * ceil32(return_data.size)) + 194 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    ('gt', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))), 'timestamp')
    stor1[address(arg1)] += 876000 * 24 * 3600
    if arg3 == owner:
        call stor3 with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 232 len 29]
        ('bool', 'ext_call.success')
        return (stor1[address(arg1)] + (876000 * 24 * 3600))
    if vIPFee[arg2] * sub_fdbe6667 / 100 <= 0:
        call stor3 with:
           value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 232 len 29]
        ('bool', 'ext_call.success')
        return (stor1[address(arg1)] + (876000 * 24 * 3600))
    if vIPFee[arg2] * sub_fdbe6667 / 100 >= vIPFee[arg2]:
        call stor3 with:
           value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 232 len 29]
        ('bool', 'ext_call.success')
        return (stor1[address(arg1)] + (876000 * 24 * 3600))
    call arg3 with:
       value vIPFee[arg2] * sub_fdbe6667 / 100 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
        call stor3 with:
           value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[263 len 29]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 264 len 29]
        ('bool', 'ext_call.success')
        return (stor1[address(arg1)] + (876000 * 24 * 3600))
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                    mem[ceil32(return_data.size) + 232 len 29]
    call stor3 with:
       value msg.value - (vIPFee[arg2] * sub_fdbe6667 / 100) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 264 len 29]
        return (stor1[address(arg1)] + (876000 * 24 * 3600))
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                    mem[(2 * ceil32(return_data.size)) + 265 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
    return stor1[address(arg1)] + (876000 * 24 * 3600), 
           mem[(2 * ceil32(return_data.size)) + 194 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
