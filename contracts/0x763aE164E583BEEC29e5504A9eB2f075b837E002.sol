contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address tokenAddress; offset 8
address managerAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 sub_fad6c66b;
mapping of uint8 stor5;
uint256 stor6;

function bridgeEnabled() {
    return bool(stor0)
}

function sub_46537902(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    return bool(stor3[arg1][arg2][arg3])
}

function manager() {
    return managerAddress
}

function sub_e2984b27(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    return bool(stor5[arg1])
}

function sub_fad6c66b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    return sub_fad6c66b[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_eb183800(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require 1 == bool(stor2[msg.sender])
    stor0 = uint8(bool(arg1))
}

function sub_44e1497d(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require 1 == bool(stor2[msg.sender])
    sub_fad6c66b[arg1 << 192] = arg2
}

function setNonce(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 1 == bool(stor2[msg.sender])
    if not arg1 - stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'dapprex.com: New nonce can't be same with the old one.'
    stor6 = arg1
}

function sub_75e2373c(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require 1 == bool(stor2[msg.sender])
    call address(arg2) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_54367e80(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    require 1 == bool(stor2[msg.sender])
    if not -bool(stor5[arg1 << 192]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dapprex.com: This chain is already disallowed.'
    stor5[arg1 << 192] = 0
}

function sub_afbccbf6(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    require 1 == bool(stor2[msg.sender])
    if not -bool(stor5[arg1 << 192]) + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dapprex.com: This chain is already allowed.'
    stor5[arg1 << 192] = 1
}

function updateManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 1 == bool(stor2[msg.sender])
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'dapprex.com: This address is already authorized on this contract.'
    stor2[stor1] = 0
    managerAddress = arg1
    stor2[arg1] = 1
}

function sub_193d6e89(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require 1 == bool(stor2[msg.sender])
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'dapprex.com: Token transfer failed.'
}

function sub_0300730a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 1 == bool(stor2[msg.sender])
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[cd[((32 * idx) + cd[4] + 36)] << 192] = 1
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f340b199(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 1 == bool(stor2[msg.sender])
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[cd[((32 * idx) + cd[4] + 36)] << 192] = 0
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a35bd673(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == uint64(arg4)
    require 1 == bool(stor2[msg.sender])
    if stor3[this.address][arg4 << 192][arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dapprex.com: Transfer already processed.'
    stor3[address(this.address)][arg4 << 192][arg3] = 1
    emit 0x69e4eb9e: address(arg1), arg4 << 192, arg2, block.timestamp, arg3
    emit 0x1: address(arg1), arg4 << 192, arg2, block.timestamp, arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.bridgeMint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3ebfd46f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint64(arg2)
    if bool(stor0) != 1:
        revert with 0, 'dapprex.com: Bridge is disabled.'
    if bool(stor5[arg2 << 192]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'dapprex.com: Transfers to this chain isn't allowed.'
    if msg.value < sub_fad6c66b[arg2 << 192]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'dapprex.com: You didn't paid enough to complete this transfer.'
    if 1 > !stor6:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    call tokenAddress.bridgeBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[address(msg.sender)][arg2 << 192][stor6 + 1] = 1
    emit 0x69e4eb9e: address(msg.sender), arg2 << 192, arg1, block.timestamp, stor6 + 1
    emit 0x0: address(msg.sender), arg2 << 192, arg1, block.timestamp, stor6 + 1
    stor6++
}



}
