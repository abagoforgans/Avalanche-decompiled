contract main {




// =====================  Runtime code  =====================


#
#  - depositBalance(uint256 arg1)
#  - withdraw(uint256 arg1)
#  - withdrawBalance(uint256 arg1)
#
address owner;
mapping of uint8 stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;
mapping of struct stor12;
mapping of uint256 stor13;
mapping of uint256 currentBalance;

function isDelegate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor1[address(arg1)])
}

function owner() {
    return owner
}

function currentBalance() {
    if not currentBalance[msg.sender]:
        revert with 0, 'No balance'
    return currentBalance[msg.sender]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDecimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function sub_0ccd6cfb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = address(arg1)
}

function setListingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and stor8 > -1 / arg1:
        revert with 0, 17
    stor9 = arg1 * stor8
}

function setDelegate(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function sub_0a915a9e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = address(arg1)
    stor4 = address(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_7b94dbee(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawItem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if not stor12[arg1].field_512:
        revert with 0, 'No sale item'
    if stor12[arg1].field_512 != msg.sender:
        revert with 0, 'Not item owner'
    stor12[arg1].field_768 = msg.sender or Mask(96, 160, stor12[arg1].field_768)
    stor12[arg1].field_1280 = 0
    emit 0x9fe83947: address(this.address), msg.sender, 0, 1, arg1, stor12[arg1].field_256
    stor2 = 1
}

function sell(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    staticcall stor4.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Not approved'
    if arg2 <= 0:
        revert with 0, 'Price should not be Zero'
    if arg2 and stor8 > -1 / arg2:
        revert with 0, 17
    stor12[stor5].field_0 = stor5
    stor12[stor5].field_256 = arg1
    stor12[stor5].field_512 = msg.sender
    stor12[stor5].field_768 = 0
    stor12[stor5].field_1024 = arg2 * stor8
    stor12[stor5].field_1280 = 0
    stor12[stor5].field_1288 = 1
    stor12[stor5].field_1296 = 0
    stor13[stor5] = msg.sender or Mask(96, 160, stor13[stor5])
    stor5++
    emit 0x9fe83947: msg.sender, 0, arg2 * stor8, 0, stor5, arg1
    stor2 = 1
}

function sub_d7280fa5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !stor5:
        revert with 0, 17
    idx = 0
    while idx < stor5 + 1:
        mem[0] = idx
        mem[32] = 12
        if stor12[idx].field_1288:
            mem[0] = idx
            mem[32] = 12
            if not stor12[idx].field_1280:
                mem[0] = idx
                mem[32] = 12
                if not stor12[idx].field_768:
                    mem[0] = idx
                    mem[32] = 12
                    mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[100] = this.address
                    mem[132] = msg.sender
                    mem[164] = stor12[idx].field_256
                    require ext_code.size(stor4)
                    call stor4.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, stor12[idx].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor12[idx].field_1280 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    mem[100] = msg.sender
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor12[arg1].field_1024:
        revert with 0, 'Not enough token'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = stor12[arg1].field_512
    mem[ceil32(return_data.size) + 196] = stor12[arg1].field_1024
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor3):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, stor12[arg1].field_512, stor12[arg1].field_1024, 0
    mem[ceil32(return_data.size) + 392] = 0
    call stor3 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, stor12[arg1].field_512, stor12[arg1].field_1024, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, stor12[arg1].field_512, stor12[arg1].field_1024, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args stor12[arg1].field_512, msg.sender, stor12[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor12[arg1].field_768 = msg.sender or Mask(96, 160, stor12[arg1].field_768)
    stor12[arg1].field_1280 = 1
    stor12[arg1].field_1288 = 0
    stor6++
    emit 0x9fe83947: stor12[arg1].field_512, msg.sender, stor12[arg1].field_1024, 1, arg1, stor12[arg1].field_256
    stor2 = 1
}

function sub_be21be04(?) {
    idx = 0
    s = 0
    while idx < stor5:
        mem[0] = idx
        mem[32] = 12
        if stor12[idx].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        s = 0
        t = 0
        while s < stor5:
            mem[0] = s
            mem[32] = 12
            if stor12[s].field_768 != msg.sender:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            mem[0] = s
            mem[32] = 12
            _55 = mem[64]
            mem[64] = mem[64] + 224
            mem[_55] = stor12[s].field_0
            mem[_55 + 32] = stor12[s].field_256
            mem[_55 + 64] = stor12[s].field_512
            mem[_55 + 96] = stor12[s].field_768
            mem[_55 + 128] = stor12[s].field_1024
            mem[_55 + 160] = bool(stor12[s].field_1280)
            mem[_55 + 192] = bool(stor12[s].field_1288)
            if t >= mem[96]:
                revert with 0, 50
            mem[(32 * t) + 128] = _55
            if t > -2:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + 1
            continue 
        _53 = mem[64]
        mem[mem[64]] = 32
        _57 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 64
        while s < _57:
            _82 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_82 + 32]
            mem[u + 64] = mem[_82 + 76 len 20]
            mem[u + 96] = mem[_82 + 108 len 20]
            mem[u + 128] = mem[_82 + 128]
            mem[u + 160] = bool(mem[_82 + 160])
            mem[u + 192] = bool(mem[_82 + 192])
            s = s + 1
            t = t + 32
            u = u + 224
            continue 
        return memory
          from mem[64]
           len _53 + (224 * _57) + -mem[64] + 64
    mem[64] = (32 * s) + 352
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[128] = (32 * s) + 128
    t = 128
    idx = s
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor5:
        mem[0] = idx
        mem[32] = 12
        if stor12[idx].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 12
        _94 = mem[64]
        mem[64] = mem[64] + 224
        mem[_94] = stor12[idx].field_0
        mem[_94 + 32] = stor12[idx].field_256
        mem[_94 + 64] = stor12[idx].field_512
        mem[_94 + 96] = stor12[idx].field_768
        mem[_94 + 128] = stor12[idx].field_1024
        mem[_94 + 160] = bool(stor12[idx].field_1280)
        mem[_94 + 192] = bool(stor12[idx].field_1288)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _94
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _92 = mem[64]
    mem[mem[64]] = 32
    _96 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _96:
        _106 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_106 + 32]
        mem[t + 64] = mem[_106 + 76 len 20]
        mem[t + 96] = mem[_106 + 108 len 20]
        mem[t + 128] = mem[_106 + 128]
        mem[t + 160] = bool(mem[_106 + 160])
        mem[t + 192] = bool(mem[_106 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _92 + (224 * _96) + -mem[64] + 64
}

function sub_29aa3a42(?) {
    if 1 > !stor5:
        revert with 0, 17
    if stor5 + 1 < stor6:
        revert with 0, 17
    if stor5 + -stor6 + 1 <= 0:
        revert with 0, 'No listed items'
    if stor5 + -stor6 + 1 > test266151307():
        revert with 0, 65
    mem[96] = stor5 + -stor6 + 1
    mem[64] = (32 * stor5 + -stor6 + 1) + 128
    if not stor5 + -stor6 + 1:
        idx = 0
        s = 0
        while idx < stor5 + 1:
            mem[0] = idx
            mem[32] = 12
            if stor12[idx].field_1280:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 12
            _39 = mem[64]
            mem[64] = mem[64] + 224
            mem[_39] = stor12[idx].field_0
            mem[_39 + 32] = stor12[idx].field_256
            mem[_39 + 64] = stor12[idx].field_512
            mem[_39 + 96] = stor12[idx].field_768
            mem[_39 + 128] = stor12[idx].field_1024
            mem[_39 + 160] = bool(stor12[idx].field_1280)
            mem[_39 + 192] = bool(stor12[idx].field_1288)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _39
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _37 = mem[64]
        mem[mem[64]] = 32
        _41 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _41:
            _66 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_66 + 32]
            mem[t + 64] = mem[_66 + 76 len 20]
            mem[t + 96] = mem[_66 + 108 len 20]
            mem[t + 128] = mem[_66 + 128]
            mem[t + 160] = bool(mem[_66 + 160])
            mem[t + 192] = bool(mem[_66 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _37 + (224 * _41) + -mem[64] + 64
    mem[64] = (32 * stor5 + -stor6 + 1) + 352
    mem[(32 * stor5 + -stor6 + 1) + 128] = 0
    mem[(32 * stor5 + -stor6 + 1) + 160] = 0
    mem[(32 * stor5 + -stor6 + 1) + 192] = 0
    mem[(32 * stor5 + -stor6 + 1) + 224] = 0
    mem[(32 * stor5 + -stor6 + 1) + 256] = 0
    mem[(32 * stor5 + -stor6 + 1) + 288] = 0
    mem[(32 * stor5 + -stor6 + 1) + 320] = 0
    mem[128] = (32 * stor5 + -stor6 + 1) + 128
    s = 128
    idx = stor5 + -stor6 + 1
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * stor5 + -stor6 + 1) + 128] = 0
        mem[(32 * stor5 + -stor6 + 1) + 160] = 0
        mem[(32 * stor5 + -stor6 + 1) + 192] = 0
        mem[(32 * stor5 + -stor6 + 1) + 224] = 0
        mem[(32 * stor5 + -stor6 + 1) + 256] = 0
        mem[(32 * stor5 + -stor6 + 1) + 288] = 0
        mem[(32 * stor5 + -stor6 + 1) + 320] = 0
        mem[s + 32] = (32 * stor5 + -stor6 + 1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor5 + 1:
        mem[0] = idx
        mem[32] = 12
        if stor12[idx].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 12
        _78 = mem[64]
        mem[64] = mem[64] + 224
        mem[_78] = stor12[idx].field_0
        mem[_78 + 32] = stor12[idx].field_256
        mem[_78 + 64] = stor12[idx].field_512
        mem[_78 + 96] = stor12[idx].field_768
        mem[_78 + 128] = stor12[idx].field_1024
        mem[_78 + 160] = bool(stor12[idx].field_1280)
        mem[_78 + 192] = bool(stor12[idx].field_1288)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _78
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _76 = mem[64]
    mem[mem[64]] = 32
    _80 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _80:
        _90 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_90 + 32]
        mem[t + 64] = mem[_90 + 76 len 20]
        mem[t + 96] = mem[_90 + 108 len 20]
        mem[t + 128] = mem[_90 + 128]
        mem[t + 160] = bool(mem[_90 + 160])
        mem[t + 192] = bool(mem[_90 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _76 + (224 * _80) + -mem[64] + 64
}



}
