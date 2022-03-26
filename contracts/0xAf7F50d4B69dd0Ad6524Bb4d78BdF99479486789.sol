contract main {




// =====================  Runtime code  =====================


#
#  - requestEthereumChange(address arg1, string arg2)
#  - requestEthereumPrice(address arg1, string arg2)
#  - requestEthereumLastMarket(address arg1, string arg2)
#
address chainlinkTokenAddress;
uint256 stor4;
mapping of address stor5;
address owner;
uint256 currentPrice;
uint256 changeDay;
uint256 lastMarket;
uint256 priceFeed;
uint256 stor11;

function getChainlinkToken() payable {
    return chainlinkTokenAddress
}

function changeDay() payable {
    return changeDay
}

function priceFeed() payable {
    return priceFeed
}

function owner() payable {
    return owner
}

function currentPrice() payable {
    return currentPrice
}

function lastMarket() payable {
    return lastMarket
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
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

function fulfillpriceFeed(bytes32 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x44536f75726365206d75737420626520746865206f7261636c65206f662074686520726571756573,
                    mem[204 len 24]
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit RequestEthereumChangeFulfilled(arg1, arg2);
    priceFeed = arg2
}

function fulfillEthereumChange(bytes32 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x44536f75726365206d75737420626520746865206f7261636c65206f662074686520726571756573,
                    mem[204 len 24]
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit RequestEthereumChangeFulfilled(arg1, arg2);
    changeDay = arg2
}

function fulfillEthereumLastMarket(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x44536f75726365206d75737420626520746865206f7261636c65206f662074686520726571756573,
                    mem[204 len 24]
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit RequestEthereumLastMarket(arg1, arg2);
    lastMarket = arg2
}

function fulfillEthereumPrice(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x44536f75726365206d75737420626520746865206f7261636c65206f662074686520726571756573,
                    mem[204 len 24]
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit RequestEthereumPriceFulfilled(arg1, arg2);
    currentPrice = arg2
}

function cancelRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[arg1] = 0
    emit ChainlinkCancelled(arg1);
    require ext_code.size(stor5[arg1])
    call stor5[arg1].cancelOracleRequest(bytes32 rg1, uint256 rg2, bytes4 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, Mask(32, 224, arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawLink() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(chainlinkTokenAddress)
    staticcall chainlinkTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chainlinkTokenAddress)
    call chainlinkTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}

function requestpriceFeed(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg2.length) + 128] = 0
    stor5[this.address][stor4] = arg1
    emit ChainlinkRequested(sha3(this.address, stor4));
    require ext_code.size(chainlinkTokenAddress)
    if arg2.length:
        call chainlinkTokenAddress.transferAndCall(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining wei
            args address(arg1), stor11, 96, 292, oracleRequest(address rg1, uint256 rg2, bytes32 rg3, address rg4, bytes4 rg5, uint256 rg6, uint256 rg7, bytes rg8), 0, 0, 0, mem[128], address(this.address), 0xa000601900000000000000000000000000000000000000000000000000000000, stor4, 1, 256, 0, 0, address(arg1) << 32 >> 2048, 0, None
    else:
        call chainlinkTokenAddress.transferAndCall(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining wei
            args address(arg1), stor11, 96, 292, oracleRequest(address rg1, uint256 rg2, bytes32 rg3, address rg4, bytes4 rg5, uint256 rg6, uint256 rg7, bytes rg8), 0, 0, 0, 0, address(this.address), 0xa000601900000000000000000000000000000000000000000000000000000000, stor4, 1, 256, 0, 0, address(arg1) << 32 >> 2048, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 35, 0x73756e61626c6520746f207472616e73666572416e6443616c6c20746f206f7261636c, 292
    stor4++
}



}
