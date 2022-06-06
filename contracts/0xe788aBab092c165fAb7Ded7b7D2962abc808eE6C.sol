contract main {




// =====================  Runtime code  =====================


const bentoBox = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f

const WMEMO = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b

const STAKING_MANAGER = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


function _fallback() payable {
    revert
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, this.address, 0x4d308c46ea9f234ea515cc51f16fba776451cac8, 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
    staticcall 0x4d308c46ea9f234ea515cc51f16fba776451cac8.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[50 len 14]:
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14])
        require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
        call 0x4d308c46ea9f234ea515cc51f16fba776451cac8.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
        call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(arg2), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg3), 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0
    else:
        require ext_call.return_data[50 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[18 len 14])
        require ext_code.size(0x4d308c46ea9f234ea515cc51f16fba776451cac8)
        call 0x4d308c46ea9f234ea515cc51f16fba776451cac8.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
        call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(arg2), 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, address(arg3), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] - arg4 > ext_call.return_data[32]:
        revert with 0, 'BoringMath: Underflow'
    return ext_call.return_data[32] - arg4, ext_call.return_data[32]
}



}
