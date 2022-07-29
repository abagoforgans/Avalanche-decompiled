contract main {




// =====================  Runtime code  =====================


array of address stor1;
array of uint256 stor60948032872463854275259372913058997247019887182142081738057990605673441290355;
mapping of uint8 stor73128821051898615026784255270104534908833263510171007470302993895429418951725;
uint16 storC6B6;
uint256 storC6B6;
uint16 storC6B6;
address storC8FC;
uint8 sub_e6959db1; offset 160
mapping of uint16 purchased;
mapping of uint256 stor114442421055342991063603479245888131046087830622680778035857430723942907911563;
uint256 totalPurchased;
array of uint256 stor114442421055342991063603479245888131046087830622680778035857430723942907911565;
mapping of uint256 sub_dd8b9ec1;

function purchased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return purchased[address(arg1)]
}

function sub_dd8b9ec1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_dd8b9ec1[address(arg1)]
}

function totalPurchased() {
    return totalPurchased
}

function sub_e6959db1(?) {
    return bool(sub_e6959db1)
}

function _fallback() payable {
    revert
}

function withdrawFunds(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not storA1AD[msg.sender]:
        if storC8FC != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot access admin functions if not admin'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_173608e7(?) {
    if bool(sub_e6959db1) != 1:
        revert with 0, 'it is not time to withdraw'
    if not sub_dd8b9ec1[msg.sender]:
        revert with 0, 'You have nothing to withdraw'
    if sub_dd8b9ec1[msg.sender] and storC6B6 > -1 / sub_dd8b9ec1[msg.sender]:
        revert with 0, 17
    if sub_dd8b9ec1[msg.sender] * storC6B6 and storC6B6 > -1 / sub_dd8b9ec1[msg.sender] * storC6B6:
        revert with 0, 17
    sub_dd8b9ec1[msg.sender] = 0
    call msg.sender with:
       value sub_dd8b9ec1[msg.sender] * storC6B6 * storC6B6 / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    emit WithdrawFunds()
}

function sub_b06ff18c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    if uint16(arg1) > storC6B6:
        revert with 0, 'Can not purchase that many NFTs'
    if storC6B6 and uint16(arg1) > -1 / storC6B6:
        revert with 0, 17
    if msg.value < storC6B6 * uint16(arg1):
        revert with 0, 'Sent wrong amount to buy'
    if purchased[msg.sender] > -uint16(arg1) + 65535:
        revert with 0, 17
    purchased[msg.sender] = uint16(uint16(arg1) + purchased[msg.sender])
    if storFD04[address(arg2)] > !uint16(arg1):
        revert with 0, 17
    storFD04[address(arg2)] += uint16(arg1)
    if purchased[msg.sender] > storC6B6:
        revert with 0, 'Bought too many'
    storFD04.length++
    stor86BF[storFD04.length] = msg.sender or Mask(96, 160, stor86BF[storFD04.length])
    if totalPurchased > !uint16(arg1):
        revert with 0, 17
    totalPurchased += uint16(arg1)
    emit DepositFunds()
}

function sub_3f9a47b8(?) {
    if not storA1AD[msg.sender]:
        if storC8FC != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot access admin functions if not admin'
    mem[64] = (32 * storFD04.length) + 128
    mem[96] = storFD04.length
    if not storFD04.length:
        mem[(32 * storFD04.length) + 128] = 32
        mem[(32 * storFD04.length) + 160] = storFD04.length
        idx = 0
        s = (32 * storFD04.length) + 192
        t = 128
        while idx < storFD04.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * storFD04.length) + 128
           len (96 * storFD04.length) + 64
    mem[128] = storFD04
    idx = 128
    s = sha3(0xfd041d68c7c6e7c5251f131f26fc637dfc6fe1c5ab0d00ed01af8994b4ec1d8d)
    while (32 * storFD04.length) + 96 > idx:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * storFD04.length) + 128] = 32
    mem[(32 * storFD04.length) + 160] = storFD04.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < storFD04.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * storFD04.length) + -mem[64] + 192
}



}
