contract main {




// =====================  Runtime code  =====================


const sub_a09c0754(?) = 0x617724974218a18769020a70162165a539c07e8a

const deployer = 0xcdee5108413e80af6c84bdd3ab0d328a3d63dda4


function _fallback() payable {
    revert
}

function sub_70cd7597(?) payable {
    require calldata.size - 4 >= 32
    create2 contract with 0 wei
                    salt: sha3(7023122375975149959, arg1, 10^16)
                    code: code.data[698 len 8089]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6) with:
         gas gas_remaining wei
        args 0x617724974218a18769020a70162165a539c07e8a, address(arg1), 1, 10^16, 10000000000100000, 0xcdee5108413e80af6c84bdd3ab0d328a3d63dda4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa0f8afaf: address(create2.new_address)
}

function createPool(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    create2 contract with 0 wei
                    salt: sha3(arg1, arg2, arg4)
                    code: code.data[698 len 8089]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5, 0xcdee5108413e80af6c84bdd3ab0d328a3d63dda4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa0f8afaf: address(create2.new_address)
}



}
