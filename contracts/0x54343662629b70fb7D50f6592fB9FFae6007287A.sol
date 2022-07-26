contract main {




// =====================  Runtime code  =====================


const name = 'CIAN.ERC2612Verifier', 0

const PERMIT_TYPEHASH = 0xd29eae1810f9a3f065590ccfa473d6fdb29545b7a5e09c439cc6b0552ad6ed86


uint256 stor0;
mapping of uint256 nonces;
mapping of uint256 sub_46a9dd3b;
mapping of uint256 sub_8ff4b029;
address sub_32418366Address;

function sub_32418366(?) payable {
    return sub_32418366Address
}

function sub_46a9dd3b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_46a9dd3b[arg1][arg2]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function sub_8ff4b029(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_8ff4b029[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approvals(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_8ff4b029[address(arg1)][address(arg2)], sub_46a9dd3b[address(arg1)][address(arg2)]
}

function revoke(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not the owner of the address'
    sub_8ff4b029[address(arg1)][address(arg2)] = 0
    emit 0x8bdc1f3f: address(arg1), arg2
}

function sub_f32cb1e7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_32418366Address)
    staticcall sub_32418366Address.0xf6806117 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 >= ext_call.return_data[0]:
        revert with 0, 'operation invalid!'
    if bool(Mask(256, -arg3, sub_46a9dd3b[address(arg1)][address(arg2)]) << -arg3) != 1:
        revert with 0, 'Basic: not allowed!'
    if block.timestamp > sub_8ff4b029[address(arg1)][address(arg2)]:
        return 0
    return 1
}

function approve(address arg1, address arg2, bytes32 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not the owner of the address'
    sub_8ff4b029[address(arg1)][address(arg2)] = arg4
    sub_46a9dd3b[address(arg1)][address(arg2)] = arg3
    emit 0x8bdc1f3f: address(arg1), arg2
}

function sub_a58666d3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(sub_32418366Address)
    staticcall sub_32418366Address.0xc3942beb with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_32418366Address)
    staticcall sub_32418366Address.0xf6806117 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'adapter invalid!'
    if bool(Mask(256, -ext_call.return_data[0], sub_46a9dd3b[address(arg1)][address(arg2)]) >> ext_call.return_data[0]) != 1:
        revert with 0, 'Adapter: not allowed!'
    if block.timestamp > sub_8ff4b029[address(arg1)][address(arg2)]:
        return 0
    return 1
}

function permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if arg4 < block.timestamp:
        revert with 0, 'Permit: EXPIRED'
    if nonces[address(arg1)] == -1:
        revert with 'NH{q', 17
    nonces[address(arg1)]++
    signer = erecover(sha3(0, stor0, sha3(0xd29eae1810f9a3f065590ccfa473d6fdb29545b7a5e09c439cc6b0552ad6ed86, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(signer):
        revert with 0, 'not the owner of the address'
    if not address(signer):
        revert with 0, 'not the owner of the address'
    sub_8ff4b029[address(arg1)][address(arg2)] = arg4
    sub_46a9dd3b[address(arg1)][address(arg2)] = arg3
    emit 0x8bdc1f3f: address(arg1), arg2
}



}
