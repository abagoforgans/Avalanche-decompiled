contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(bool arg1, address arg2, address arg3, uint256 arg4)
#
const UniswapV2Router = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const getBlockNumber = block.number

const expScale = 10^18

const cETH = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c

const factory = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const WETH_ADDRESS = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const COMPTROLLER = 0x486af39519b4dc9a7fccd318217352830e8ad9b4


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_507f025c(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < ('cd', 4).length
    require 1 < ('cd', 4).length
    require 2 < ('cd', 4).length
    require ext_code.size(mem[204 len 20])
    call mem[204 len 20].liquidateBorrow(address rg1, address rg2) with:
       value cd[36] wei
         gas gas_remaining wei
        args mem[140 len 20], address(mem[160])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
