contract main {




// =====================  Runtime code  =====================


address stor2;
uint256 stor4;
mapping of address stor5;
address owner;
uint256 price;
uint256 stor10;

function owner() payable {
    return owner
}

function price() payable {
    return price
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function fulfill(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x65536f75726365206d75737420626520746865206f7261636c65206f662074686520726571756573,
                    mem[204 len 24]
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    price = arg2
}

function transferOwnership(address arg1) payable {
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

function withdrawLink() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}

function requestPrice(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    stor5[this.address][stor4] = arg1
    emit ChainlinkRequested(sha3(this.address, stor4));
    require ext_code.size(stor2)
    if arg2.length:
        call stor2.transferAndCall(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining wei
            args address(arg1), stor10, 96, 292, oracleRequest(address rg1, uint256 rg2, bytes32 rg3, address rg4, bytes4 rg5, uint256 rg6, uint256 rg7, bytes rg8), 0, 0, 0, mem[128], address(this.address), 0x4357855e00000000000000000000000000000000000000000000000000000000, stor4, 1, 256, 0, 0, address(arg1) << 32 >> 2048, 0, None
    else:
        call stor2.transferAndCall(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining wei
            args address(arg1), stor10, 96, 292, oracleRequest(address rg1, uint256 rg2, bytes32 rg3, address rg4, bytes4 rg5, uint256 rg6, uint256 rg7, bytes rg8), 0, 0, 0, 0, address(this.address), 0x4357855e00000000000000000000000000000000000000000000000000000000, stor4, 1, 256, 0, 0, address(arg1) << 32 >> 2048, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 35, 0x73756e61626c6520746f207472616e73666572416e6443616c6c20746f206f7261636c, 292
    stor4++
    return sha3(this.address, stor4)
}



}
