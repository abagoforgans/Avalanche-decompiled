contract main {




// =====================  Runtime code  =====================


address controllerAddress;
mapping of uint8 stor1;

function getController() payable {
    return controllerAddress
}

function isCrp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_NOT_CONTROLLER'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    emit OwnershipTransferred(controllerAddress, arg1);
    controllerAddress = arg1
}

function newCrp(address arg1, string arg2, string arg3, address[] arg4, uint256[] arg5, uint256[] arg6, uint256 arg7, bool arg8, bool arg9, bool arg10, bool arg11, bool arg12, bool arg13) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 192
    require calldata.size - 68 >= 192
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_NOT_CONTROLLER'
    require cd[(arg2 + 68)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 68)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 68)] + 36 <= calldata.size - (32 * cd[(arg2 + cd[(arg2 + 68)] + 4)])
    if cd[(arg2 + cd[(arg2 + 68)] + 4)] < 2:
        revert with 0, 'ERR_TOO_FEW_TOKENS'
    require cd[(arg2 + 68)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 68)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 68)] + 36 <= calldata.size - (32 * cd[(arg2 + cd[(arg2 + 68)] + 4)])
    require cd[(arg2 + 100)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 100)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 100)] + 36 <= calldata.size - (32 * cd[(arg2 + cd[(arg2 + 100)] + 4)])
    if cd[(arg2 + cd[(arg2 + 100)] + 4)] != cd[(arg2 + cd[(arg2 + 68)] + 4)]:
        revert with 0, 'ERR_START_BALANCES_MISMATCH'
    require cd[(arg2 + 68)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 68)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 68)] + 36 <= calldata.size - (32 * cd[(arg2 + cd[(arg2 + 68)] + 4)])
    require cd[(arg2 + 132)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 132)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 132)] + 36 <= calldata.size - (32 * cd[(arg2 + cd[(arg2 + 132)] + 4)])
    if cd[(arg2 + cd[(arg2 + 132)] + 4)] != cd[(arg2 + cd[(arg2 + 68)] + 4)]:
        revert with 0, 'ERR_START_WEIGHTS_MISMATCH'
    require arg2.length < calldata.size + -arg2 - 35
    require cd[(arg2 + arg2.length + 4)] <= test266151307()
    require arg2 + 4 <= calldata.size - cd[(arg2 + arg2.length + 4)]
    require cd[(arg2 + 36)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 36)] + 4)] <= test266151307()
    require arg2 + 4 <= calldata.size - cd[(arg2 + cd[(arg2 + 36)] + 4)]
    mem[ceil32(cd[(arg2 + arg2.length + 4)]) + 22902] = cd[(arg2 + cd[(arg2 + 36)] + 4)]
    mem[ceil32(cd[(arg2 + arg2.length + 4)]) + 22934 len cd[(arg2 + cd[(arg2 + 36)] + 4)]] = call.data[arg2 + cd[(arg2 + 36)] + 36 len cd[(arg2 + cd[(arg2 + 36)] + 4)]]
    mem[cd[(arg2 + cd[(arg2 + 36)] + 4)] + ceil32(cd[(arg2 + arg2.length + 4)]) + 22934] = 0
    require cd[(arg2 + 68)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 68)] + 4)] <= test266151307()
    require arg2 + 4 <= calldata.size - (32 * cd[(arg2 + cd[(arg2 + 68)] + 4)])
    mem[ceil32(cd[(arg2 + arg2.length + 4)]) + ceil32(cd[(arg2 + cd[(arg2 + 36)] + 4)]) + 22934] = cd[(arg2 + cd[(arg2 + 68)] + 4)]
    s = ceil32(cd[(arg2 + arg2.length + 4)]) + ceil32(cd[(arg2 + cd[(arg2 + 36)] + 4)]) + 22966
    idx = 0
    t = arg2 + cd[(arg2 + 68)] + 36
    while idx < cd[(arg2 + cd[(arg2 + 68)] + 4)]:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[(arg2 + 100)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 100)] + 4)] <= test266151307()
    require arg2 + 4 <= calldata.size - (32 * cd[(arg2 + cd[(arg2 + 100)] + 4)])
    require cd[(arg2 + cd[(arg2 + 100)] + 4)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require cd[(arg2 + 132)] < calldata.size + -arg2 - 35
    require cd[(arg2 + cd[(arg2 + 132)] + 4)] <= test266151307()
    require arg2 + 4 <= calldata.size - (32 * cd[(arg2 + cd[(arg2 + 132)] + 4)])
    require cd[(arg2 + cd[(arg2 + 132)] + 4)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    require arg6 == bool(arg6)
    require arg7 == bool(arg7)
    require arg8 == arg8
    create contract with 0 wei
                    code: code.data[2137 len 22326], address(arg1), 256, bool(arg3), bool(arg4), bool(arg5), bool(arg6), bool(arg7), arg8, 192, ceil32(cd[(arg2 + arg2.length + 4)]) + 224, ceil32(cd[(arg2 + arg2.length + 4)]) + ceil32(cd[(arg2 + cd[(arg2 + 36)] + 4)]) + 256, ceil32(cd[(arg2 + arg2.length + 4)]) + ceil32(cd[(arg2 + cd[(arg2 + 36)] + 4)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 4)]) + 288, ceil32(cd[(arg2 + arg2.length + 4)]) + ceil32(cd[(arg2 + cd[(arg2 + 36)] + 4)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 4)]) + (32 * cd[(arg2 + cd[(arg2 + 100)] + 4)]) + 320, cd[(arg2 + 164)], cd[(arg2 + arg2.length + 4)], call.data[arg2 + arg2.length + 36 len cd[(arg2 + arg2.length + 4)]], 0, mem[cd[(arg2 + arg2.length + 4)] + 22934 len ceil32(cd[(arg2 + arg2.length + 4)]) + ceil32(cd[(arg2 + cd[(arg2 + 36)] + 4)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 4)]) + -cd[(arg2 + arg2.length + 4)] + 32], cd[(arg2 + cd[(arg2 + 100)] + 4)], call.data[arg2 + cd[(arg2 + 100)] + 36 len 32 * cd[(arg2 + cd[(arg2 + 100)] + 4)]], cd[(arg2 + cd[(arg2 + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + 36 len 32 * cd[(arg2 + cd[(arg2 + 132)] + 4)]]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogNewCrp(msg.sender, address(create.new_address));
    stor1[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x92eefe9b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
