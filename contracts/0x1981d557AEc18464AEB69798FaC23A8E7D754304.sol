contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of struct stor101;
mapping of uint256 stor102;
uint256 stor103;

function owner() {
    return owner
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

function withdraw() payable {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0c44f295(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor102[address(arg1)]:
        stor101.length++
        stor101[stor101.length].field_0 = address(arg1)
        stor101[stor101.length].field_160 = 0
        stor102[address(arg1)] = stor101.length
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

function invest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value <= 0:
        revert with 0, 'Invalid amount'
    if stor101.length < 1:
        revert with 'NH{q', 17
    if stor103 >= stor101.length - 1:
        stor103 = 0
    else:
        if stor103 > -2:
            revert with 'NH{q', 17
        stor103++
    if stor103 >= stor101.length:
        revert with 'NH{q', 50
    call stor101[stor103].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x54d6e75a: msg.sender, msg.value, arg1
}

function sub_91d66e83(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor102[address(arg1)]:
        if stor102[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor101.length < 1:
            revert with 'NH{q', 17
        if stor101.length - 1 != stor102[address(arg1)] - 1:
            if stor101.length - 1 >= stor101.length:
                revert with 'NH{q', 50
            if stor102[address(arg1)] - 1 >= stor101.length:
                revert with 'NH{q', 50
            stor101[stor102[address(arg1)]].field_0 = stor101[stor101.length].field_0
            stor102[stor101[stor101.length].field_0] = stor102[address(arg1)]
        if not stor101.length:
            revert with 'NH{q', 49
        stor101[stor101.length].field_0 = 0
        stor101.length--
        stor102[address(arg1)] = 0
}

function initialize(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor103 = 0
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 102
        if not stor102[mem[(32 * idx) + 140 len 20]]:
            stor101.length++
            stor101[stor101.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor101[stor101.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 102
            stor102[address(mem[(32 * idx) + 128])] = stor101.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}



}
