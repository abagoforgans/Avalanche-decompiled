contract main {




// =====================  Runtime code  =====================


#
#  - sub_2a2a8049(?)
#  - sub_5cae4765(?)
#  - sub_6e0bf24f(?)
#  - sub_7841135a(?)
#  - sub_7af59668(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address stor101;
address stor102;
address stor103;
mapping of uint256 sub_b757c3bd;
mapping of uint256 sub_40119382;
mapping of uint256 sub_335b7263;
mapping of uint256 sub_e780da4a;
array of struct sub_02b0b977;
mapping of uint8 stor109;

function sub_02b0b977(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_02b0b977[arg1].field_0
    return sub_02b0b977[arg1][arg2].field_0
}

function sub_335b7263(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_335b7263[arg1]
}

function sub_40119382(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_40119382[arg1]
}

function owner() {
    return owner
}

function sub_b757c3bd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b757c3bd[arg1]
}

function sub_ca298c4e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor109[arg1][arg2])
}

function sub_e780da4a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e780da4a[arg1]
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

function depositNative() payable {
    if sub_b757c3bd[msg.sender] > !msg.value:
        revert with 0, 17
    sub_b757c3bd[msg.sender] += msg.value
    emit 0x1d7216e1: msg.value, msg.sender
}

function setSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101 = arg1
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = arg1
    stor102 = arg2
    stor103 = arg3
}

function sub_a0356ed7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_02b0b977[address(arg1)].field_0:
        mem[128] = sub_02b0b977[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_02b0b977[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_02b0b977[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_02b0b977[address(arg1)].field_0, data=mem[128 len 32 * sub_02b0b977[address(arg1)].field_0])
    mem[(32 * sub_02b0b977[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_02b0b977[address(arg1)].field_0) + 160] = sub_02b0b977[address(arg1)].field_0
    mem[(32 * sub_02b0b977[address(arg1)].field_0) + 192 len 32 * sub_02b0b977[address(arg1)].field_0] = mem[128 len 32 * sub_02b0b977[address(arg1)].field_0]
    return memory
      from (32 * sub_02b0b977[address(arg1)].field_0) + 128
       len (96 * sub_02b0b977[address(arg1)].field_0) + 64
}

function sub_e0680aba(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor103)
        call stor103.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        sub_02b0b977[msg.sender].field_0++
        sub_02b0b977[msg.sender][sub_02b0b977[msg.sender].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = sha3(msg.sender, 109)
        stor109[msg.sender][cd[((32 * idx) + cd[4] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0xf84acdfc: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length]), msg.sender
}



}
