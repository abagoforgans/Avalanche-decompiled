contract main {




// =====================  Runtime code  =====================


const sub_a09c0754(?) = 0x617724974218a18769020a70162165a539c07e8a

const deployer = 0xcdee5108413e80af6c84bdd3ab0d328a3d63dda4


function _fallback() payable {
    revert
}

function createPool(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    create2 contract with 0 wei
                    salt: sha3(arg1, arg2, block.timestamp)
                    code: code.data[773 len 8976]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5, 0xcdee5108413e80af6c84bdd3ab0d328a3d63dda4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa0f8afaf: address(create2.new_address)
}

function sub_70cd7597(?) payable {
    require calldata.size - 4 >= 32
    create2 contract with 0 wei
                    salt: sha3(7023122375975149959, arg1, block.timestamp)
                    code: code.data[773 len 8976]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) with:
         gas gas_remaining wei
        args 0x617724974218a18769020a70162165a539c07e8a, address(arg1), 10^9, block.number + (56 * 3600), block.number + 701600, 0xcdee5108413e80af6c84bdd3ab0d328a3d63dda4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa0f8afaf: address(create2.new_address)
}

function sub_95b25017(?) payable {
    require calldata.size - 4 >= 64
    create2 contract with 0 wei
                    salt: sha3(7023122375975149959, arg1, block.timestamp)
                    code: code.data[773 len 8976]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) with:
         gas gas_remaining wei
        args 0x617724974218a18769020a70162165a539c07e8a, address(arg1), 10^9, block.number + (56 * 3600), arg2 + block.number + (56 * 3600), 0xcdee5108413e80af6c84bdd3ab0d328a3d63dda4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa0f8afaf: address(create2.new_address)
}



}
