contract main {




// =====================  Runtime code  =====================


#
#  - sub_e1925e15(?)
#
array of uint256 name;
array of uint256 symbol;
array of struct sub_e57a104a;
uint256 stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
array of struct stor8;
uint256 index;
uint256 MAX_ARTS;
address stor11;
address sub_6e423058Address;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Does not exist'
    return approved[arg1]
}

function sub_1729df86(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e57a104a.length
    return sub_e57a104a[arg1].field_0, sub_e57a104a[arg1].field_256, sub_e57a104a[arg1].field_1024
}

function MAX_ARTS() {
    return MAX_ARTS
}

function index() {
    return index
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function sub_6e423058(?) {
    return sub_6e423058Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_ce971a10(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e57a104a.length
    return sub_e57a104a[arg1].field_0, 
           sub_e57a104a[arg1].field_256,
           sub_e57a104a[arg1].field_1024,
           sub_e57a104a[arg1].field_512,
           sub_e57a104a[arg1].field_768
}

function sub_e57a104a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e57a104a.length
    return sub_e57a104a[arg1].field_0, 
           sub_e57a104a[arg1].field_256,
           sub_e57a104a[arg1].field_512,
           sub_e57a104a[arg1].field_768,
           sub_e57a104a[arg1].field_1024
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
}

function isOwnerOf(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg1]:
        revert with 0, 'Cannot be zero address'
    return (ownerOf[arg1] == arg2)
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'Operator should be current owner'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0, 'Cannot be zero address'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'No one else'
    approved[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
}

function sub_18e0eeff(?) {
    require ext_code.size(sub_6e423058Address)
    staticcall sub_6e423058Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_289d2a9d(?) {
    require ext_code.size(sub_6e423058Address)
    staticcall sub_6e423058Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= 1
}

function sub_58193003(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_6e423058Address)
    staticcall sub_6e423058Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a2ceab0b(?) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'Cannot be zero address'
    if not ownerOf[arg1]:
        revert with 0, 'Cannot be zero address'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'No one else'
    require arg1 < sub_e57a104a.length
    sub_e57a104a[arg1].field_256 = arg2
    emit 0x5de39bd5: arg1, arg2
}

function sub_7483837f(?) {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4f6e6c792074686520706174726f6e2063616e206368616e67652074686520746f6b656e20616464726573,
                    mem[208 len 20]
    sub_6e423058Address = arg1
}

function changePatron(address arg1) {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734f6e6c792074686520706174726f6e2063616e206368616e67652074686520706174726f6e20616464726573,
                    mem[209 len 19]
    stor11 = arg1
}

function sub_64262dcc(?) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'Cannot be zero address'
    if not ownerOf[arg1]:
        revert with 0, 'Cannot be zero address'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'No one else'
    require arg1 < sub_e57a104a.length
    sub_e57a104a[arg1].field_1024 = 1
    sub_e57a104a[arg1].field_256 = arg2
    stor3++
    emit 0x8916ae29: arg1, 1, arg2
}

function sub_fe3ccee4(?) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'Cannot be zero address'
    if not ownerOf[arg1]:
        revert with 0, 'Cannot be zero address'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'No one else'
    if arg2:
        if arg2 != 1:
            revert with 0, 'Status must be 1 or 0'
    require arg1 < sub_e57a104a.length
    sub_e57a104a[arg1].field_1024 = arg2
    emit 0x1712ccf1: arg1, arg2
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if not ownerOf[arg2]:
        revert with 0, 'Cannot be zero address'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'No one else'
    balanceOf[address(arg1)]++
    balanceOf[address(msg.sender)]--
    ownerOf[arg2] = arg1
    require arg2 < sub_e57a104a.length
    if sub_e57a104a[arg2].field_1024 == 1:
        require arg2 < sub_e57a104a.length
        sub_e57a104a[arg2].field_1024 = 0
        stor3--
    emit Transfer(msg.sender, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'Cannot be zero address'
    if not ownerOf[arg3]:
        revert with 0, 'Cannot be zero address'
    if ownerOf[arg3] != arg1:
        revert with 0, 'Invalid owner'
    if approved[arg3] != arg2:
        revert with 0, 'Wrong approval'
    balanceOf[address(arg2)]++
    balanceOf[address(arg1)]--
    ownerOf[arg3] = arg2
    require arg3 < sub_e57a104a.length
    if sub_e57a104a[arg3].field_1024 == 1:
        require arg3 < sub_e57a104a.length
        sub_e57a104a[arg3].field_1024 = 0
        stor3--
    emit Transfer(arg1, arg2, arg3);
}

function sub_d2c08802(?) {
    if not msg.sender:
        revert with 0, 'Cannot be zero address'
    if not balanceOf[address(msg.sender)]:
        return ''
    require balanceOf[address(msg.sender)] <= test266151307()
    if balanceOf[address(msg.sender)]:
        mem[128 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
    idx = 0
    s = 0
    while idx < sub_e57a104a.length:
        mem[0] = idx
        mem[32] = 4
        if ownerOf[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(msg.sender)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(msg.sender)]) + 192 len floor32(balanceOf[address(msg.sender)])] = mem[128 len floor32(balanceOf[address(msg.sender)])]
    return Array(len=balanceOf[address(msg.sender)], data=mem[128 len floor32(balanceOf[address(msg.sender)])], mem[(32 * balanceOf[address(msg.sender)]) + floor32(balanceOf[address(msg.sender)]) + 192 len (32 * balanceOf[address(msg.sender)]) - floor32(balanceOf[address(msg.sender)])]), 
}

function createToken() payable {
    if sub_e57a104a.length > MAX_ARTS:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7443616e6e6f74206d696e74206d6f7265207468616e203530303020746f6b656e,
                    mem[197 len 31]
    if 25 * 10^16 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x734e65656420746f2073656e6420746865206d696e696d756d20616d6f756e74206f6620746f6b656e7320617320706179656d656e,
                    mem[217 len 11]
    call stor11 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e57a104a.length++
    sub_e57a104a[sub_e57a104a.length].field_0 = index
    sub_e57a104a[sub_e57a104a.length].field_256 = 0
    sub_e57a104a[sub_e57a104a.length].field_512 = msg.sender
    sub_e57a104a[sub_e57a104a.length].field_768 = msg.sender
    sub_e57a104a[sub_e57a104a.length].field_1024 = 0
    if not msg.sender:
        revert with 0, 'Cannot be zero address'
    if ownerOf[stor2.length - 1]:
        revert with 0, '', mem[484]
    ownerOf[stor2.length - 1] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, sub_e57a104a.length - 1);
    emit 0xe4250a48: sub_e57a104a.length - 1, 0, msg.sender, msg.sender
    index++
}

function sub_eddbadb3(?) {
    require calldata.size - 4 >= 32
    require sub_e57a104a.length <= test266151307()
    if sub_e57a104a.length:
        mem[128 len 32 * sub_e57a104a.length] = call.data[calldata.size len 32 * sub_e57a104a.length]
    require sub_e57a104a.length <= test266151307()
    mem[(32 * sub_e57a104a.length) + 128] = sub_e57a104a.length
    if sub_e57a104a.length:
        mem[(32 * sub_e57a104a.length) + 160 len 32 * sub_e57a104a.length] = call.data[calldata.size len 32 * sub_e57a104a.length]
    idx = 0
    s = 0
    while idx < sub_e57a104a.length:
        require idx < mem[(32 * sub_e57a104a.length) + 128]
        if mem[(32 * idx) + (32 * sub_e57a104a.length) + 160] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < sub_e57a104a.length
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    mem[(64 * sub_e57a104a.length) + 160] = s
    if s:
        mem[(64 * sub_e57a104a.length) + 192 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    while t < s:
        require t < sub_e57a104a.length
        require t < s
        mem[(32 * t) + (64 * sub_e57a104a.length) + 192] = mem[(32 * t) + 128]
        t = t + 1
        continue 
    mem[(64 * sub_e57a104a.length) + (32 * s) + 256 len floor32(s)] = mem[(64 * sub_e57a104a.length) + 192 len floor32(s)]
    return Array(len=s, data=mem[(64 * sub_e57a104a.length) + 192 len floor32(s)], mem[(64 * sub_e57a104a.length) + (32 * s) + floor32(s) + 256 len (32 * s) - floor32(s)]), 
}

function buyArt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e57a104a.length
    if not sub_e57a104a[arg1].field_768:
        revert with 0, 'Cannot be zero address'
    if not msg.sender:
        revert with 0, 'Cannot be zero address'
    if msg.sender == sub_e57a104a[arg1].field_768:
        revert with 0, 'Cannot be current owner'
    if msg.value < sub_e57a104a[arg1].field_256:
        revert with 0, 'Invalid Amount'
    require arg1 < sub_e57a104a.length
    if not sub_e57a104a[arg1].field_768:
        revert with 0, 'Cannot be zero address'
    balanceOf[address(msg.sender)]++
    balanceOf[stor2[arg1].field_768]--
    ownerOf[arg1] = msg.sender
    require arg1 < sub_e57a104a.length
    if sub_e57a104a[arg1].field_1024 == 1:
        require arg1 < sub_e57a104a.length
        sub_e57a104a[arg1].field_1024 = 0
        stor3--
    emit Transfer(sub_e57a104a[arg1].field_768, msg.sender, arg1);
    if msg.value <= sub_e57a104a[arg1].field_256:
        call sub_e57a104a[arg1].field_768 with:
           value sub_e57a104a[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call msg.sender with:
           value msg.value - sub_e57a104a[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call sub_e57a104a[arg1].field_768 with:
           value sub_e57a104a[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
    require arg1 < sub_e57a104a.length
    sub_e57a104a[arg1].field_768 = msg.sender
    sub_e57a104a[arg1].field_1024 = 0
    stor8[stor2[arg1].field_0].field_0++
    stor8[stor2[arg1].field_0][stor8[stor2[arg1].field_0].field_0].field_0 = sub_e57a104a[arg1].field_0
    stor8[stor2[arg1].field_0][stor8[stor2[arg1].field_0].field_0].field_256 = sub_e57a104a[arg1].field_256
    stor8[stor2[arg1].field_0][stor8[stor2[arg1].field_0].field_0].field_512 = sub_e57a104a[arg1].field_768
    stor8[stor2[arg1].field_0][stor8[stor2[arg1].field_0].field_0].field_768 = msg.sender
    stor8[stor2[arg1].field_0][stor8[stor2[arg1].field_0].field_0].field_1024 = block.timestamp
    stor8[stor2[arg1].field_0][stor8[stor2[arg1].field_0].field_0].field_1280 = sub_e57a104a[arg1].field_1024
    stor3--
    emit 0xf906914d: arg1, sub_e57a104a[arg1].field_256, sub_e57a104a[arg1].field_512, sub_e57a104a[arg1].field_768, msg.sender
}

function sub_3e54fca1(?) {
    require sub_e57a104a.length <= test266151307()
    mem[96] = sub_e57a104a.length
    if not sub_e57a104a.length:
        require sub_e57a104a.length <= test266151307()
        mem[(32 * sub_e57a104a.length) + 128] = sub_e57a104a.length
        mem[64] = (64 * sub_e57a104a.length) + 160
        if not sub_e57a104a.length:
            idx = 0
            while idx < sub_e57a104a.length:
                _63 = mem[64]
                mem[64] = mem[64] + 160
                mem[_63] = 0
                mem[_63 + 32] = 0
                mem[_63 + 64] = 0
                mem[_63 + 96] = 0
                mem[_63 + 128] = 0
                mem[0] = 2
                _80 = mem[64]
                mem[64] = mem[64] + 160
                mem[_80] = sub_e57a104a[idx].field_0
                mem[_80 + 32] = sub_e57a104a[idx].field_256
                mem[_80 + 64] = sub_e57a104a[idx].field_512
                mem[_80 + 96] = sub_e57a104a[idx].field_768
                mem[_80 + 128] = sub_e57a104a[idx].field_1024
                require idx < mem[96]
                mem[(32 * idx) + 128] = idx
                require idx < mem[(32 * sub_e57a104a.length) + 128]
                mem[(32 * idx) + (32 * sub_e57a104a.length) + 160] = sub_e57a104a[idx].field_1024
                idx = idx + 1
                continue 
            _60 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _62 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _60 + 96] = mem[(32 * sub_e57a104a.length) + 128]
            _117 = mem[(32 * sub_e57a104a.length) + 128]
            mem[(32 * _62) + _60 + 128 len floor32(mem[(32 * sub_e57a104a.length) + 128])] = mem[(32 * sub_e57a104a.length) + 160 len floor32(mem[(32 * sub_e57a104a.length) + 128])]
            return memory
              from mem[64]
               len (32 * _117) + (32 * _62) + _60 + -mem[64] + 128
        mem[(32 * sub_e57a104a.length) + 160 len 32 * sub_e57a104a.length] = call.data[calldata.size len 32 * sub_e57a104a.length]
        idx = 0
        while idx < sub_e57a104a.length:
            _67 = mem[64]
            mem[64] = mem[64] + 160
            mem[_67] = 0
            mem[_67 + 32] = 0
            mem[_67 + 64] = 0
            mem[_67 + 96] = 0
            mem[_67 + 128] = 0
            mem[0] = 2
            _86 = mem[64]
            mem[64] = mem[64] + 160
            mem[_86] = sub_e57a104a[idx].field_0
            mem[_86 + 32] = sub_e57a104a[idx].field_256
            mem[_86 + 64] = sub_e57a104a[idx].field_512
            mem[_86 + 96] = sub_e57a104a[idx].field_768
            mem[_86 + 128] = sub_e57a104a[idx].field_1024
            require idx < mem[96]
            mem[(32 * idx) + 128] = idx
            require idx < mem[(32 * sub_e57a104a.length) + 128]
            mem[(32 * idx) + (32 * sub_e57a104a.length) + 160] = sub_e57a104a[idx].field_1024
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _66 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _64 + 96] = mem[(32 * sub_e57a104a.length) + 128]
        _120 = mem[(32 * sub_e57a104a.length) + 128]
        mem[(32 * _66) + _64 + 128 len floor32(mem[(32 * sub_e57a104a.length) + 128])] = mem[(32 * sub_e57a104a.length) + 160 len floor32(mem[(32 * sub_e57a104a.length) + 128])]
        return memory
          from mem[64]
           len (32 * _120) + (32 * _66) + _64 + -mem[64] + 128
    mem[128 len 32 * sub_e57a104a.length] = call.data[calldata.size len 32 * sub_e57a104a.length]
    require sub_e57a104a.length <= test266151307()
    mem[(32 * sub_e57a104a.length) + 128] = sub_e57a104a.length
    mem[64] = (64 * sub_e57a104a.length) + 160
    if not sub_e57a104a.length:
        idx = 0
        while idx < sub_e57a104a.length:
            _71 = mem[64]
            mem[64] = mem[64] + 160
            mem[_71] = 0
            mem[_71 + 32] = 0
            mem[_71 + 64] = 0
            mem[_71 + 96] = 0
            mem[_71 + 128] = 0
            mem[0] = 2
            _92 = mem[64]
            mem[64] = mem[64] + 160
            mem[_92] = sub_e57a104a[idx].field_0
            mem[_92 + 32] = sub_e57a104a[idx].field_256
            mem[_92 + 64] = sub_e57a104a[idx].field_512
            mem[_92 + 96] = sub_e57a104a[idx].field_768
            mem[_92 + 128] = sub_e57a104a[idx].field_1024
            require idx < mem[96]
            mem[(32 * idx) + 128] = idx
            require idx < mem[(32 * sub_e57a104a.length) + 128]
            mem[(32 * idx) + (32 * sub_e57a104a.length) + 160] = sub_e57a104a[idx].field_1024
            idx = idx + 1
            continue 
        _68 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _70 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _68 + 96] = mem[(32 * sub_e57a104a.length) + 128]
        _123 = mem[(32 * sub_e57a104a.length) + 128]
        mem[(32 * _70) + _68 + 128 len floor32(mem[(32 * sub_e57a104a.length) + 128])] = mem[(32 * sub_e57a104a.length) + 160 len floor32(mem[(32 * sub_e57a104a.length) + 128])]
        return memory
          from mem[64]
           len (32 * _123) + (32 * _70) + _68 + -mem[64] + 128
    mem[(32 * sub_e57a104a.length) + 160 len 32 * sub_e57a104a.length] = call.data[calldata.size len 32 * sub_e57a104a.length]
    idx = 0
    while idx < sub_e57a104a.length:
        _75 = mem[64]
        mem[64] = mem[64] + 160
        mem[_75] = 0
        mem[_75 + 32] = 0
        mem[_75 + 64] = 0
        mem[_75 + 96] = 0
        mem[_75 + 128] = 0
        mem[0] = 2
        _98 = mem[64]
        mem[64] = mem[64] + 160
        mem[_98] = sub_e57a104a[idx].field_0
        mem[_98 + 32] = sub_e57a104a[idx].field_256
        mem[_98 + 64] = sub_e57a104a[idx].field_512
        mem[_98 + 96] = sub_e57a104a[idx].field_768
        mem[_98 + 128] = sub_e57a104a[idx].field_1024
        require idx < mem[96]
        mem[(32 * idx) + 128] = idx
        require idx < mem[(32 * sub_e57a104a.length) + 128]
        mem[(32 * idx) + (32 * sub_e57a104a.length) + 160] = sub_e57a104a[idx].field_1024
        idx = idx + 1
        continue 
    _72 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _74 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _72 + 96] = mem[(32 * sub_e57a104a.length) + 128]
    _126 = mem[(32 * sub_e57a104a.length) + 128]
    mem[(32 * _74) + _72 + 128 len floor32(mem[(32 * sub_e57a104a.length) + 128])] = mem[(32 * sub_e57a104a.length) + 160 len floor32(mem[(32 * sub_e57a104a.length) + 128])]
    return memory
      from mem[64]
       len (32 * _126) + (32 * _74) + _72 + -mem[64] + 128
}



}
