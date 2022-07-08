contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - execute(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, uint256 arg7, address arg8, uint256 arg9, uint256 arg10, bytes arg11)
#
address profitTakerAddress;

function profitTaker() {
    return profitTakerAddress
}

function _fallback() payable {
    revert
}

function apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 96
    mem[768] = 96
    mem[800] = 96
    mem[832] = 96
    mem[864] = 96
    mem[896] = 96
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 832
    mem[928] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + 68)])
    mem[960] = cd[(arg4 + cd[(arg4 + 36)] + 68)]
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] == address(cd[(arg4 + cd[(arg4 + 36)] + 100)])
    mem[992] = cd[(arg4 + cd[(arg4 + 36)] + 100)]
    mem[1024] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[1056] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    require cd[(arg4 + cd[(arg4 + 36)] + 196)] == address(cd[(arg4 + cd[(arg4 + 36)] + 196)])
    mem[1088] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    mem[1120] = cd[(arg4 + cd[(arg4 + 36)] + 228)]
    require cd[(arg4 + cd[(arg4 + 36)] + 260)] == address(cd[(arg4 + cd[(arg4 + 36)] + 260)])
    mem[1152] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    mem[1184] = cd[(arg4 + cd[(arg4 + 36)] + 292)]
    mem[1216] = cd[(arg4 + cd[(arg4 + 36)] + 324)]
    mem[1248] = cd[(arg4 + cd[(arg4 + 36)] + 356)]
    mem[1280] = cd[(arg4 + cd[(arg4 + 36)] + 388)]
    mem[1312] = cd[(arg4 + cd[(arg4 + 36)] + 420)]
    require cd[(arg4 + cd[(arg4 + 36)] + 452)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 452)])
    mem[1344] = cd[(arg4 + cd[(arg4 + 36)] + 452)]
    require cd[(arg4 + cd[(arg4 + 36)] + 484)] == address(cd[(arg4 + cd[(arg4 + 36)] + 484)])
    mem[1376] = cd[(arg4 + cd[(arg4 + 36)] + 484)]
    require cd[(arg4 + cd[(arg4 + 36)] + 516)] == address(cd[(arg4 + cd[(arg4 + 36)] + 516)])
    mem[1408] = cd[(arg4 + cd[(arg4 + 36)] + 516)]
    mem[1440] = cd[(arg4 + cd[(arg4 + 36)] + 548)]
    require cd[(arg4 + cd[(arg4 + 36)] + 580)] == address(cd[(arg4 + cd[(arg4 + 36)] + 580)])
    mem[1472] = cd[(arg4 + cd[(arg4 + 36)] + 580)]
    require cd[(arg4 + cd[(arg4 + 36)] + 612)] == address(cd[(arg4 + cd[(arg4 + 36)] + 612)])
    mem[1504] = cd[(arg4 + cd[(arg4 + 36)] + 612)]
    mem[1536] = cd[(arg4 + cd[(arg4 + 36)] + 644)]
    require cd[(arg4 + cd[(arg4 + 36)] + 676)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 >= 1760 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 <= test266151307()
    mem[1760] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 68
    t = 1792
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1568] = 1760
    require cd[(arg4 + cd[(arg4 + 36)] + 708)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 >= 1792 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1824
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1600] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792
    require cd[(arg4 + cd[(arg4 + 36)] + 740)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 >= 1824 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1856
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1632] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824
    require cd[(arg4 + cd[(arg4 + 36)] + 772)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 >= 1856 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1888
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1664] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856
    require cd[(arg4 + cd[(arg4 + 36)] + 804)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 >= 1888 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1920
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1696] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888
    require cd[(arg4 + cd[(arg4 + 36)] + 836)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 >= 1920 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1952
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1728] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920
    idx = 0
    while uint8(idx) < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require uint8(idx) < mem[mem[1664]]
        _4878 = mem[(32 * uint8(idx)) + mem[1664] + 32]
        require uint8(idx) < mem[mem[1568]]
        _4881 = mem[(32 * uint8(idx)) + mem[1568] + 32]
        require uint8(idx) < mem[mem[1728]]
        _4886 = mem[(32 * uint8(idx)) + mem[1728] + 32]
        _4888 = mem[64]
        mem[mem[64] + 36] = mem[(32 * uint8(idx)) + mem[1664] + 44 len 20]
        mem[mem[64] + 68] = _4881
        _4889 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_4889 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4889 + 36 len 28]
        mem[64] = _4888 + 164
        mem[_4888 + 100] = 32
        mem[_4888 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_4886)):
            revert with 0, 'Address: call to non-contract'
        _4903 = mem[_4889]
        s = 0
        while s < _4903:
            mem[s + _4888 + 164] = mem[s + _4889 + 32]
            s = s + 32
            continue 
        if ceil32(_4903) <= _4903:
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5708 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5727 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5708
                    mem[_4888 + 232] = _5727
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5708, _5727, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5797 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5814 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5797
                    mem[_4888 + 232] = _5814
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5797, _5814, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5711 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5729 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5711
                    mem[_4888 + ceil32(return_data.size) + 233] = _5729
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5711, _5729, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5801 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5815 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5801
                    mem[_4888 + ceil32(return_data.size) + 233] = _5815
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5801, _5815, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        else:
            mem[_4888 + _4903 + 164] = 0
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5730 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5751 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5730
                    mem[_4888 + 232] = _5751
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5730, _5751, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5817 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5830 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5817
                    mem[_4888 + 232] = _5830
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5817, _5830, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5733 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5753 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5733
                    mem[_4888 + ceil32(return_data.size) + 233] = _5753
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5733, _5753, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5821 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5831 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5821
                    mem[_4888 + ceil32(return_data.size) + 233] = _5831
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5821, _5831, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _4873 = mem[1088]
    _4874 = mem[1120]
    _4877 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _4874
    _4884 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_4877 + 100] = 32
    mem[_4877 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_4873)):
        revert with 0, 'Address: call to non-contract'
    _4897 = mem[_4884]
    mem[_4877 + 164 len ceil32(mem[_4884])] = mem[_4884 + 32 len ceil32(mem[_4884])]
    if ceil32(_4897) <= _4897:
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5702 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5702
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5702, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5702, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5702, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5788 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5788
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5788, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5788, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5788, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5703 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5703
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5703, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5703, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5703, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5789 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5789
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5789, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5789, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5789, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[_4877 + _4897 + 164] = 0
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5724 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5724
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5724, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5724, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5724, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5812 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5812
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5812, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5812, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5812, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5725 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5725
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5725, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5725, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5725, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5813 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5813
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5813, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5813, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5813, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 96
    mem[768] = 96
    mem[800] = 96
    mem[832] = 96
    mem[864] = 96
    mem[896] = 96
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 832
    mem[928] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + 68)])
    mem[960] = cd[(arg4 + cd[(arg4 + 36)] + 68)]
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] == address(cd[(arg4 + cd[(arg4 + 36)] + 100)])
    mem[992] = cd[(arg4 + cd[(arg4 + 36)] + 100)]
    mem[1024] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[1056] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    require cd[(arg4 + cd[(arg4 + 36)] + 196)] == address(cd[(arg4 + cd[(arg4 + 36)] + 196)])
    mem[1088] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    mem[1120] = cd[(arg4 + cd[(arg4 + 36)] + 228)]
    require cd[(arg4 + cd[(arg4 + 36)] + 260)] == address(cd[(arg4 + cd[(arg4 + 36)] + 260)])
    mem[1152] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    mem[1184] = cd[(arg4 + cd[(arg4 + 36)] + 292)]
    mem[1216] = cd[(arg4 + cd[(arg4 + 36)] + 324)]
    mem[1248] = cd[(arg4 + cd[(arg4 + 36)] + 356)]
    mem[1280] = cd[(arg4 + cd[(arg4 + 36)] + 388)]
    mem[1312] = cd[(arg4 + cd[(arg4 + 36)] + 420)]
    require cd[(arg4 + cd[(arg4 + 36)] + 452)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 452)])
    mem[1344] = cd[(arg4 + cd[(arg4 + 36)] + 452)]
    require cd[(arg4 + cd[(arg4 + 36)] + 484)] == address(cd[(arg4 + cd[(arg4 + 36)] + 484)])
    mem[1376] = cd[(arg4 + cd[(arg4 + 36)] + 484)]
    require cd[(arg4 + cd[(arg4 + 36)] + 516)] == address(cd[(arg4 + cd[(arg4 + 36)] + 516)])
    mem[1408] = cd[(arg4 + cd[(arg4 + 36)] + 516)]
    mem[1440] = cd[(arg4 + cd[(arg4 + 36)] + 548)]
    require cd[(arg4 + cd[(arg4 + 36)] + 580)] == address(cd[(arg4 + cd[(arg4 + 36)] + 580)])
    mem[1472] = cd[(arg4 + cd[(arg4 + 36)] + 580)]
    require cd[(arg4 + cd[(arg4 + 36)] + 612)] == address(cd[(arg4 + cd[(arg4 + 36)] + 612)])
    mem[1504] = cd[(arg4 + cd[(arg4 + 36)] + 612)]
    mem[1536] = cd[(arg4 + cd[(arg4 + 36)] + 644)]
    require cd[(arg4 + cd[(arg4 + 36)] + 676)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 >= 1760 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 <= test266151307()
    mem[1760] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 68
    t = 1792
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1568] = 1760
    require cd[(arg4 + cd[(arg4 + 36)] + 708)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 >= 1792 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1824
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1600] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792
    require cd[(arg4 + cd[(arg4 + 36)] + 740)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 >= 1824 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1856
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1632] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824
    require cd[(arg4 + cd[(arg4 + 36)] + 772)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 >= 1856 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1888
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1664] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856
    require cd[(arg4 + cd[(arg4 + 36)] + 804)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 >= 1888 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1920
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1696] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888
    require cd[(arg4 + cd[(arg4 + 36)] + 836)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 >= 1920 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1952
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1728] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920
    idx = 0
    while uint8(idx) < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require uint8(idx) < mem[mem[1664]]
        _4878 = mem[(32 * uint8(idx)) + mem[1664] + 32]
        require uint8(idx) < mem[mem[1568]]
        _4881 = mem[(32 * uint8(idx)) + mem[1568] + 32]
        require uint8(idx) < mem[mem[1728]]
        _4886 = mem[(32 * uint8(idx)) + mem[1728] + 32]
        _4888 = mem[64]
        mem[mem[64] + 36] = mem[(32 * uint8(idx)) + mem[1664] + 44 len 20]
        mem[mem[64] + 68] = _4881
        _4889 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_4889 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4889 + 36 len 28]
        mem[64] = _4888 + 164
        mem[_4888 + 100] = 32
        mem[_4888 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_4886)):
            revert with 0, 'Address: call to non-contract'
        _4903 = mem[_4889]
        s = 0
        while s < _4903:
            mem[s + _4888 + 164] = mem[s + _4889 + 32]
            s = s + 32
            continue 
        if ceil32(_4903) <= _4903:
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5708 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5727 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5708
                    mem[_4888 + 232] = _5727
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5708, _5727, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5797 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5814 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5797
                    mem[_4888 + 232] = _5814
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5797, _5814, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5711 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5729 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5711
                    mem[_4888 + ceil32(return_data.size) + 233] = _5729
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5711, _5729, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5801 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5815 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5801
                    mem[_4888 + ceil32(return_data.size) + 233] = _5815
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5801, _5815, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        else:
            mem[_4888 + _4903 + 164] = 0
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5730 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5751 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5730
                    mem[_4888 + 232] = _5751
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5730, _5751, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5817 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5830 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5817
                    mem[_4888 + 232] = _5830
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5817, _5830, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5733 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5753 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5733
                    mem[_4888 + ceil32(return_data.size) + 233] = _5753
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5733, _5753, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5821 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5831 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5821
                    mem[_4888 + ceil32(return_data.size) + 233] = _5831
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5821, _5831, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _4873 = mem[1088]
    _4874 = mem[1120]
    _4877 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _4874
    _4884 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_4877 + 100] = 32
    mem[_4877 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_4873)):
        revert with 0, 'Address: call to non-contract'
    _4897 = mem[_4884]
    mem[_4877 + 164 len ceil32(mem[_4884])] = mem[_4884 + 32 len ceil32(mem[_4884])]
    if ceil32(_4897) <= _4897:
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5702 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5702
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5702, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5702, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5702, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5788 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5788
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5788, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5788, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5788, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5703 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5703
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5703, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5703, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5703, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5789 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5789
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5789, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5789, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5789, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[_4877 + _4897 + 164] = 0
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5724 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5724
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5724, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5724, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5724, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5812 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5812
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5812, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5812, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5812, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5725 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5725
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5725, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5725, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5725, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5813 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5813
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5813, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5813, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5813, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 96
    mem[768] = 96
    mem[800] = 96
    mem[832] = 96
    mem[864] = 96
    mem[896] = 96
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 832
    mem[928] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + 68)])
    mem[960] = cd[(arg4 + cd[(arg4 + 36)] + 68)]
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] == address(cd[(arg4 + cd[(arg4 + 36)] + 100)])
    mem[992] = cd[(arg4 + cd[(arg4 + 36)] + 100)]
    mem[1024] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[1056] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    require cd[(arg4 + cd[(arg4 + 36)] + 196)] == address(cd[(arg4 + cd[(arg4 + 36)] + 196)])
    mem[1088] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    mem[1120] = cd[(arg4 + cd[(arg4 + 36)] + 228)]
    require cd[(arg4 + cd[(arg4 + 36)] + 260)] == address(cd[(arg4 + cd[(arg4 + 36)] + 260)])
    mem[1152] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    mem[1184] = cd[(arg4 + cd[(arg4 + 36)] + 292)]
    mem[1216] = cd[(arg4 + cd[(arg4 + 36)] + 324)]
    mem[1248] = cd[(arg4 + cd[(arg4 + 36)] + 356)]
    mem[1280] = cd[(arg4 + cd[(arg4 + 36)] + 388)]
    mem[1312] = cd[(arg4 + cd[(arg4 + 36)] + 420)]
    require cd[(arg4 + cd[(arg4 + 36)] + 452)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 452)])
    mem[1344] = cd[(arg4 + cd[(arg4 + 36)] + 452)]
    require cd[(arg4 + cd[(arg4 + 36)] + 484)] == address(cd[(arg4 + cd[(arg4 + 36)] + 484)])
    mem[1376] = cd[(arg4 + cd[(arg4 + 36)] + 484)]
    require cd[(arg4 + cd[(arg4 + 36)] + 516)] == address(cd[(arg4 + cd[(arg4 + 36)] + 516)])
    mem[1408] = cd[(arg4 + cd[(arg4 + 36)] + 516)]
    mem[1440] = cd[(arg4 + cd[(arg4 + 36)] + 548)]
    require cd[(arg4 + cd[(arg4 + 36)] + 580)] == address(cd[(arg4 + cd[(arg4 + 36)] + 580)])
    mem[1472] = cd[(arg4 + cd[(arg4 + 36)] + 580)]
    require cd[(arg4 + cd[(arg4 + 36)] + 612)] == address(cd[(arg4 + cd[(arg4 + 36)] + 612)])
    mem[1504] = cd[(arg4 + cd[(arg4 + 36)] + 612)]
    mem[1536] = cd[(arg4 + cd[(arg4 + 36)] + 644)]
    require cd[(arg4 + cd[(arg4 + 36)] + 676)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 >= 1760 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 <= test266151307()
    mem[1760] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 68
    t = 1792
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1568] = 1760
    require cd[(arg4 + cd[(arg4 + 36)] + 708)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 >= 1792 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1824
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1600] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792
    require cd[(arg4 + cd[(arg4 + 36)] + 740)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 >= 1824 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1856
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1632] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824
    require cd[(arg4 + cd[(arg4 + 36)] + 772)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 >= 1856 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1888
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1664] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856
    require cd[(arg4 + cd[(arg4 + 36)] + 804)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 >= 1888 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1920
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1696] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888
    require cd[(arg4 + cd[(arg4 + 36)] + 836)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 >= 1920 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1952
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1728] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920
    idx = 0
    while uint8(idx) < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require uint8(idx) < mem[mem[1664]]
        _4878 = mem[(32 * uint8(idx)) + mem[1664] + 32]
        require uint8(idx) < mem[mem[1568]]
        _4881 = mem[(32 * uint8(idx)) + mem[1568] + 32]
        require uint8(idx) < mem[mem[1728]]
        _4886 = mem[(32 * uint8(idx)) + mem[1728] + 32]
        _4888 = mem[64]
        mem[mem[64] + 36] = mem[(32 * uint8(idx)) + mem[1664] + 44 len 20]
        mem[mem[64] + 68] = _4881
        _4889 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_4889 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4889 + 36 len 28]
        mem[64] = _4888 + 164
        mem[_4888 + 100] = 32
        mem[_4888 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_4886)):
            revert with 0, 'Address: call to non-contract'
        _4903 = mem[_4889]
        s = 0
        while s < _4903:
            mem[s + _4888 + 164] = mem[s + _4889 + 32]
            s = s + 32
            continue 
        if ceil32(_4903) <= _4903:
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5708 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5727 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5708
                    mem[_4888 + 232] = _5727
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5708, _5727, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5797 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5814 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5797
                    mem[_4888 + 232] = _5814
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5797, _5814, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5711 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5729 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5711
                    mem[_4888 + ceil32(return_data.size) + 233] = _5729
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5711, _5729, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5801 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5815 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5801
                    mem[_4888 + ceil32(return_data.size) + 233] = _5815
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5801, _5815, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        else:
            mem[_4888 + _4903 + 164] = 0
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5730 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5751 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5730
                    mem[_4888 + 232] = _5751
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5730, _5751, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5817 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5830 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5817
                    mem[_4888 + 232] = _5830
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5817, _5830, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5733 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5753 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5733
                    mem[_4888 + ceil32(return_data.size) + 233] = _5753
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5733, _5753, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5821 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5831 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5821
                    mem[_4888 + ceil32(return_data.size) + 233] = _5831
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5821, _5831, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _4873 = mem[1088]
    _4874 = mem[1120]
    _4877 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _4874
    _4884 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_4877 + 100] = 32
    mem[_4877 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_4873)):
        revert with 0, 'Address: call to non-contract'
    _4897 = mem[_4884]
    mem[_4877 + 164 len ceil32(mem[_4884])] = mem[_4884 + 32 len ceil32(mem[_4884])]
    if ceil32(_4897) <= _4897:
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5702 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5702
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5702, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5702, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5702, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5788 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5788
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5788, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5788, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5788, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5703 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5703
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5703, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5703, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5703, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5789 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5789
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5789, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5789, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5789, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[_4877 + _4897 + 164] = 0
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5724 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5724
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5724, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5724, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5724, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5812 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5812
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5812, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5812, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5812, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5725 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5725
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5725, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5725, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5725, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5813 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5813
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5813, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5813, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5813, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 96
    mem[768] = 96
    mem[800] = 96
    mem[832] = 96
    mem[864] = 96
    mem[896] = 96
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 832
    mem[928] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + 68)])
    mem[960] = cd[(arg4 + cd[(arg4 + 36)] + 68)]
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] == address(cd[(arg4 + cd[(arg4 + 36)] + 100)])
    mem[992] = cd[(arg4 + cd[(arg4 + 36)] + 100)]
    mem[1024] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[1056] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    require cd[(arg4 + cd[(arg4 + 36)] + 196)] == address(cd[(arg4 + cd[(arg4 + 36)] + 196)])
    mem[1088] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    mem[1120] = cd[(arg4 + cd[(arg4 + 36)] + 228)]
    require cd[(arg4 + cd[(arg4 + 36)] + 260)] == address(cd[(arg4 + cd[(arg4 + 36)] + 260)])
    mem[1152] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    mem[1184] = cd[(arg4 + cd[(arg4 + 36)] + 292)]
    mem[1216] = cd[(arg4 + cd[(arg4 + 36)] + 324)]
    mem[1248] = cd[(arg4 + cd[(arg4 + 36)] + 356)]
    mem[1280] = cd[(arg4 + cd[(arg4 + 36)] + 388)]
    mem[1312] = cd[(arg4 + cd[(arg4 + 36)] + 420)]
    require cd[(arg4 + cd[(arg4 + 36)] + 452)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 452)])
    mem[1344] = cd[(arg4 + cd[(arg4 + 36)] + 452)]
    require cd[(arg4 + cd[(arg4 + 36)] + 484)] == address(cd[(arg4 + cd[(arg4 + 36)] + 484)])
    mem[1376] = cd[(arg4 + cd[(arg4 + 36)] + 484)]
    require cd[(arg4 + cd[(arg4 + 36)] + 516)] == address(cd[(arg4 + cd[(arg4 + 36)] + 516)])
    mem[1408] = cd[(arg4 + cd[(arg4 + 36)] + 516)]
    mem[1440] = cd[(arg4 + cd[(arg4 + 36)] + 548)]
    require cd[(arg4 + cd[(arg4 + 36)] + 580)] == address(cd[(arg4 + cd[(arg4 + 36)] + 580)])
    mem[1472] = cd[(arg4 + cd[(arg4 + 36)] + 580)]
    require cd[(arg4 + cd[(arg4 + 36)] + 612)] == address(cd[(arg4 + cd[(arg4 + 36)] + 612)])
    mem[1504] = cd[(arg4 + cd[(arg4 + 36)] + 612)]
    mem[1536] = cd[(arg4 + cd[(arg4 + 36)] + 644)]
    require cd[(arg4 + cd[(arg4 + 36)] + 676)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 >= 1760 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 <= test266151307()
    mem[1760] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 68
    t = 1792
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1568] = 1760
    require cd[(arg4 + cd[(arg4 + 36)] + 708)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 >= 1792 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1824
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1600] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792
    require cd[(arg4 + cd[(arg4 + 36)] + 740)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 >= 1824 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1856
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1632] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824
    require cd[(arg4 + cd[(arg4 + 36)] + 772)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 >= 1856 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1888
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1664] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856
    require cd[(arg4 + cd[(arg4 + 36)] + 804)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 >= 1888 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1920
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1696] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888
    require cd[(arg4 + cd[(arg4 + 36)] + 836)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 >= 1920 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1952
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1728] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920
    idx = 0
    while uint8(idx) < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require uint8(idx) < mem[mem[1664]]
        _4878 = mem[(32 * uint8(idx)) + mem[1664] + 32]
        require uint8(idx) < mem[mem[1568]]
        _4881 = mem[(32 * uint8(idx)) + mem[1568] + 32]
        require uint8(idx) < mem[mem[1728]]
        _4886 = mem[(32 * uint8(idx)) + mem[1728] + 32]
        _4888 = mem[64]
        mem[mem[64] + 36] = mem[(32 * uint8(idx)) + mem[1664] + 44 len 20]
        mem[mem[64] + 68] = _4881
        _4889 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_4889 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4889 + 36 len 28]
        mem[64] = _4888 + 164
        mem[_4888 + 100] = 32
        mem[_4888 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_4886)):
            revert with 0, 'Address: call to non-contract'
        _4903 = mem[_4889]
        s = 0
        while s < _4903:
            mem[s + _4888 + 164] = mem[s + _4889 + 32]
            s = s + 32
            continue 
        if ceil32(_4903) <= _4903:
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5708 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5727 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5708
                    mem[_4888 + 232] = _5727
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5708, _5727, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5797 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5814 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5797
                    mem[_4888 + 232] = _5814
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5797, _5814, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5711 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5729 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5711
                    mem[_4888 + ceil32(return_data.size) + 233] = _5729
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5711, _5729, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5801 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5815 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5801
                    mem[_4888 + ceil32(return_data.size) + 233] = _5815
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5801, _5815, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        else:
            mem[_4888 + _4903 + 164] = 0
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5730 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5751 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5730
                    mem[_4888 + 232] = _5751
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5730, _5751, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5817 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5830 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5817
                    mem[_4888 + 232] = _5830
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5817, _5830, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5733 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5753 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5733
                    mem[_4888 + ceil32(return_data.size) + 233] = _5753
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5733, _5753, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5821 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5831 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5821
                    mem[_4888 + ceil32(return_data.size) + 233] = _5831
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5821, _5831, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _4873 = mem[1088]
    _4874 = mem[1120]
    _4877 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _4874
    _4884 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_4877 + 100] = 32
    mem[_4877 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_4873)):
        revert with 0, 'Address: call to non-contract'
    _4897 = mem[_4884]
    mem[_4877 + 164 len ceil32(mem[_4884])] = mem[_4884 + 32 len ceil32(mem[_4884])]
    if ceil32(_4897) <= _4897:
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5702 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5702
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5702, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5702, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5702, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5788 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5788
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5788, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5788, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5788, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5703 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5703
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5703, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5703, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5703, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5789 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5789
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5789, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5789, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5789, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[_4877 + _4897 + 164] = 0
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5724 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5724
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5724, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5724, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5724, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5812 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5812
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5812, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5812, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5812, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5725 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5725
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5725, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5725, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5725, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5813 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5813
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5813, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5813, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5813, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 96
    mem[768] = 96
    mem[800] = 96
    mem[832] = 96
    mem[864] = 96
    mem[896] = 96
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 832
    mem[928] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + 68)])
    mem[960] = cd[(arg4 + cd[(arg4 + 36)] + 68)]
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] == address(cd[(arg4 + cd[(arg4 + 36)] + 100)])
    mem[992] = cd[(arg4 + cd[(arg4 + 36)] + 100)]
    mem[1024] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[1056] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    require cd[(arg4 + cd[(arg4 + 36)] + 196)] == address(cd[(arg4 + cd[(arg4 + 36)] + 196)])
    mem[1088] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    mem[1120] = cd[(arg4 + cd[(arg4 + 36)] + 228)]
    require cd[(arg4 + cd[(arg4 + 36)] + 260)] == address(cd[(arg4 + cd[(arg4 + 36)] + 260)])
    mem[1152] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    mem[1184] = cd[(arg4 + cd[(arg4 + 36)] + 292)]
    mem[1216] = cd[(arg4 + cd[(arg4 + 36)] + 324)]
    mem[1248] = cd[(arg4 + cd[(arg4 + 36)] + 356)]
    mem[1280] = cd[(arg4 + cd[(arg4 + 36)] + 388)]
    mem[1312] = cd[(arg4 + cd[(arg4 + 36)] + 420)]
    require cd[(arg4 + cd[(arg4 + 36)] + 452)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 452)])
    mem[1344] = cd[(arg4 + cd[(arg4 + 36)] + 452)]
    require cd[(arg4 + cd[(arg4 + 36)] + 484)] == address(cd[(arg4 + cd[(arg4 + 36)] + 484)])
    mem[1376] = cd[(arg4 + cd[(arg4 + 36)] + 484)]
    require cd[(arg4 + cd[(arg4 + 36)] + 516)] == address(cd[(arg4 + cd[(arg4 + 36)] + 516)])
    mem[1408] = cd[(arg4 + cd[(arg4 + 36)] + 516)]
    mem[1440] = cd[(arg4 + cd[(arg4 + 36)] + 548)]
    require cd[(arg4 + cd[(arg4 + 36)] + 580)] == address(cd[(arg4 + cd[(arg4 + 36)] + 580)])
    mem[1472] = cd[(arg4 + cd[(arg4 + 36)] + 580)]
    require cd[(arg4 + cd[(arg4 + 36)] + 612)] == address(cd[(arg4 + cd[(arg4 + 36)] + 612)])
    mem[1504] = cd[(arg4 + cd[(arg4 + 36)] + 612)]
    mem[1536] = cd[(arg4 + cd[(arg4 + 36)] + 644)]
    require cd[(arg4 + cd[(arg4 + 36)] + 676)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 >= 1760 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 <= test266151307()
    mem[1760] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 68
    t = 1792
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1568] = 1760
    require cd[(arg4 + cd[(arg4 + 36)] + 708)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 >= 1792 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1824
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1600] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792
    require cd[(arg4 + cd[(arg4 + 36)] + 740)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 >= 1824 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1856
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1632] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824
    require cd[(arg4 + cd[(arg4 + 36)] + 772)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 >= 1856 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1888
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1664] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856
    require cd[(arg4 + cd[(arg4 + 36)] + 804)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 >= 1888 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1920
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1696] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888
    require cd[(arg4 + cd[(arg4 + 36)] + 836)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 >= 1920 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1952
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1728] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920
    idx = 0
    while uint8(idx) < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require uint8(idx) < mem[mem[1664]]
        _4878 = mem[(32 * uint8(idx)) + mem[1664] + 32]
        require uint8(idx) < mem[mem[1568]]
        _4881 = mem[(32 * uint8(idx)) + mem[1568] + 32]
        require uint8(idx) < mem[mem[1728]]
        _4886 = mem[(32 * uint8(idx)) + mem[1728] + 32]
        _4888 = mem[64]
        mem[mem[64] + 36] = mem[(32 * uint8(idx)) + mem[1664] + 44 len 20]
        mem[mem[64] + 68] = _4881
        _4889 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_4889 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4889 + 36 len 28]
        mem[64] = _4888 + 164
        mem[_4888 + 100] = 32
        mem[_4888 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_4886)):
            revert with 0, 'Address: call to non-contract'
        _4903 = mem[_4889]
        s = 0
        while s < _4903:
            mem[s + _4888 + 164] = mem[s + _4889 + 32]
            s = s + 32
            continue 
        if ceil32(_4903) <= _4903:
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5708 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5727 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5708
                    mem[_4888 + 232] = _5727
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5708, _5727, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5797 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5814 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5797
                    mem[_4888 + 232] = _5814
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5797, _5814, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5711 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5729 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5711
                    mem[_4888 + ceil32(return_data.size) + 233] = _5729
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5711, _5729, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5801 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5815 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5801
                    mem[_4888 + ceil32(return_data.size) + 233] = _5815
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5801, _5815, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        else:
            mem[_4888 + _4903 + 164] = 0
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5730 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5751 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5730
                    mem[_4888 + 232] = _5751
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5730, _5751, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5817 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5830 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5817
                    mem[_4888 + 232] = _5830
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5817, _5830, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5733 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5753 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5733
                    mem[_4888 + ceil32(return_data.size) + 233] = _5753
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5733, _5753, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5821 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5831 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5821
                    mem[_4888 + ceil32(return_data.size) + 233] = _5831
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5821, _5831, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _4873 = mem[1088]
    _4874 = mem[1120]
    _4877 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _4874
    _4884 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_4877 + 100] = 32
    mem[_4877 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_4873)):
        revert with 0, 'Address: call to non-contract'
    _4897 = mem[_4884]
    mem[_4877 + 164 len ceil32(mem[_4884])] = mem[_4884 + 32 len ceil32(mem[_4884])]
    if ceil32(_4897) <= _4897:
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5702 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5702
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5702, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5702, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5702, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5788 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5788
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5788, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5788, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5788, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5703 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5703
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5703, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5703, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5703, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5789 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5789
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5789, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5789, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5789, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[_4877 + _4897 + 164] = 0
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5724 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5724
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5724, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5724, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5724, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5812 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5812
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5812, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5812, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5812, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5725 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5725
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5725, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5725, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5725, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5813 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5813
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5813, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5813, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5813, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 96
    mem[768] = 96
    mem[800] = 96
    mem[832] = 96
    mem[864] = 96
    mem[896] = 96
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 832
    mem[928] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + 68)])
    mem[960] = cd[(arg4 + cd[(arg4 + 36)] + 68)]
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] == address(cd[(arg4 + cd[(arg4 + 36)] + 100)])
    mem[992] = cd[(arg4 + cd[(arg4 + 36)] + 100)]
    mem[1024] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[1056] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    require cd[(arg4 + cd[(arg4 + 36)] + 196)] == address(cd[(arg4 + cd[(arg4 + 36)] + 196)])
    mem[1088] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    mem[1120] = cd[(arg4 + cd[(arg4 + 36)] + 228)]
    require cd[(arg4 + cd[(arg4 + 36)] + 260)] == address(cd[(arg4 + cd[(arg4 + 36)] + 260)])
    mem[1152] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    mem[1184] = cd[(arg4 + cd[(arg4 + 36)] + 292)]
    mem[1216] = cd[(arg4 + cd[(arg4 + 36)] + 324)]
    mem[1248] = cd[(arg4 + cd[(arg4 + 36)] + 356)]
    mem[1280] = cd[(arg4 + cd[(arg4 + 36)] + 388)]
    mem[1312] = cd[(arg4 + cd[(arg4 + 36)] + 420)]
    require cd[(arg4 + cd[(arg4 + 36)] + 452)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 452)])
    mem[1344] = cd[(arg4 + cd[(arg4 + 36)] + 452)]
    require cd[(arg4 + cd[(arg4 + 36)] + 484)] == address(cd[(arg4 + cd[(arg4 + 36)] + 484)])
    mem[1376] = cd[(arg4 + cd[(arg4 + 36)] + 484)]
    require cd[(arg4 + cd[(arg4 + 36)] + 516)] == address(cd[(arg4 + cd[(arg4 + 36)] + 516)])
    mem[1408] = cd[(arg4 + cd[(arg4 + 36)] + 516)]
    mem[1440] = cd[(arg4 + cd[(arg4 + 36)] + 548)]
    require cd[(arg4 + cd[(arg4 + 36)] + 580)] == address(cd[(arg4 + cd[(arg4 + 36)] + 580)])
    mem[1472] = cd[(arg4 + cd[(arg4 + 36)] + 580)]
    require cd[(arg4 + cd[(arg4 + 36)] + 612)] == address(cd[(arg4 + cd[(arg4 + 36)] + 612)])
    mem[1504] = cd[(arg4 + cd[(arg4 + 36)] + 612)]
    mem[1536] = cd[(arg4 + cd[(arg4 + 36)] + 644)]
    require cd[(arg4 + cd[(arg4 + 36)] + 676)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 >= 1760 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 <= test266151307()
    mem[1760] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 68
    t = 1792
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1568] = 1760
    require cd[(arg4 + cd[(arg4 + 36)] + 708)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 >= 1792 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1824
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1600] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792
    require cd[(arg4 + cd[(arg4 + 36)] + 740)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 >= 1824 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1856
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1632] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824
    require cd[(arg4 + cd[(arg4 + 36)] + 772)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 >= 1856 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1888
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1664] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856
    require cd[(arg4 + cd[(arg4 + 36)] + 804)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 >= 1888 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1920
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1696] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888
    require cd[(arg4 + cd[(arg4 + 36)] + 836)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 >= 1920 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1952
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1728] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920
    idx = 0
    while uint8(idx) < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require uint8(idx) < mem[mem[1664]]
        _4878 = mem[(32 * uint8(idx)) + mem[1664] + 32]
        require uint8(idx) < mem[mem[1568]]
        _4881 = mem[(32 * uint8(idx)) + mem[1568] + 32]
        require uint8(idx) < mem[mem[1728]]
        _4886 = mem[(32 * uint8(idx)) + mem[1728] + 32]
        _4888 = mem[64]
        mem[mem[64] + 36] = mem[(32 * uint8(idx)) + mem[1664] + 44 len 20]
        mem[mem[64] + 68] = _4881
        _4889 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_4889 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4889 + 36 len 28]
        mem[64] = _4888 + 164
        mem[_4888 + 100] = 32
        mem[_4888 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_4886)):
            revert with 0, 'Address: call to non-contract'
        _4903 = mem[_4889]
        s = 0
        while s < _4903:
            mem[s + _4888 + 164] = mem[s + _4889 + 32]
            s = s + 32
            continue 
        if ceil32(_4903) <= _4903:
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5708 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5727 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5708
                    mem[_4888 + 232] = _5727
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5708, _5727, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5797 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5814 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5797
                    mem[_4888 + 232] = _5814
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5797, _5814, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5711 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5729 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5711
                    mem[_4888 + ceil32(return_data.size) + 233] = _5729
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5711, _5729, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5801 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5815 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5801
                    mem[_4888 + ceil32(return_data.size) + 233] = _5815
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5801, _5815, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        else:
            mem[_4888 + _4903 + 164] = 0
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5730 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5751 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5730
                    mem[_4888 + 232] = _5751
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5730, _5751, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5817 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5830 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5817
                    mem[_4888 + 232] = _5830
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5817, _5830, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5733 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5753 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5733
                    mem[_4888 + ceil32(return_data.size) + 233] = _5753
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5733, _5753, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5821 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5831 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5821
                    mem[_4888 + ceil32(return_data.size) + 233] = _5831
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5821, _5831, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _4873 = mem[1088]
    _4874 = mem[1120]
    _4877 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _4874
    _4884 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_4877 + 100] = 32
    mem[_4877 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_4873)):
        revert with 0, 'Address: call to non-contract'
    _4897 = mem[_4884]
    mem[_4877 + 164 len ceil32(mem[_4884])] = mem[_4884 + 32 len ceil32(mem[_4884])]
    if ceil32(_4897) <= _4897:
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5702 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5702
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5702, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5702, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5702, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5788 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5788
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5788, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5788, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5788, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5703 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5703
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5703, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5703, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5703, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5789 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5789
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5789, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5789, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5789, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[_4877 + _4897 + 164] = 0
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5724 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5724
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5724, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5724, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5724, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5812 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5812
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5812, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5812, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5812, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5725 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5725
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5725, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5725, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5725, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5813 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5813
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5813, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5813, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5813, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 96
    mem[768] = 96
    mem[800] = 96
    mem[832] = 96
    mem[864] = 96
    mem[896] = 96
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 832
    mem[928] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + 68)])
    mem[960] = cd[(arg4 + cd[(arg4 + 36)] + 68)]
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] == address(cd[(arg4 + cd[(arg4 + 36)] + 100)])
    mem[992] = cd[(arg4 + cd[(arg4 + 36)] + 100)]
    mem[1024] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[1056] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    require cd[(arg4 + cd[(arg4 + 36)] + 196)] == address(cd[(arg4 + cd[(arg4 + 36)] + 196)])
    mem[1088] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    mem[1120] = cd[(arg4 + cd[(arg4 + 36)] + 228)]
    require cd[(arg4 + cd[(arg4 + 36)] + 260)] == address(cd[(arg4 + cd[(arg4 + 36)] + 260)])
    mem[1152] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    mem[1184] = cd[(arg4 + cd[(arg4 + 36)] + 292)]
    mem[1216] = cd[(arg4 + cd[(arg4 + 36)] + 324)]
    mem[1248] = cd[(arg4 + cd[(arg4 + 36)] + 356)]
    mem[1280] = cd[(arg4 + cd[(arg4 + 36)] + 388)]
    mem[1312] = cd[(arg4 + cd[(arg4 + 36)] + 420)]
    require cd[(arg4 + cd[(arg4 + 36)] + 452)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 452)])
    mem[1344] = cd[(arg4 + cd[(arg4 + 36)] + 452)]
    require cd[(arg4 + cd[(arg4 + 36)] + 484)] == address(cd[(arg4 + cd[(arg4 + 36)] + 484)])
    mem[1376] = cd[(arg4 + cd[(arg4 + 36)] + 484)]
    require cd[(arg4 + cd[(arg4 + 36)] + 516)] == address(cd[(arg4 + cd[(arg4 + 36)] + 516)])
    mem[1408] = cd[(arg4 + cd[(arg4 + 36)] + 516)]
    mem[1440] = cd[(arg4 + cd[(arg4 + 36)] + 548)]
    require cd[(arg4 + cd[(arg4 + 36)] + 580)] == address(cd[(arg4 + cd[(arg4 + 36)] + 580)])
    mem[1472] = cd[(arg4 + cd[(arg4 + 36)] + 580)]
    require cd[(arg4 + cd[(arg4 + 36)] + 612)] == address(cd[(arg4 + cd[(arg4 + 36)] + 612)])
    mem[1504] = cd[(arg4 + cd[(arg4 + 36)] + 612)]
    mem[1536] = cd[(arg4 + cd[(arg4 + 36)] + 644)]
    require cd[(arg4 + cd[(arg4 + 36)] + 676)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 >= 1760 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792 <= test266151307()
    mem[1760] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 68
    t = 1792
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1568] = 1760
    require cd[(arg4 + cd[(arg4 + 36)] + 708)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 >= 1792 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1824
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1600] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + 1792
    require cd[(arg4 + cd[(arg4 + 36)] + 740)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 >= 1824 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1856
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1632] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + 1824
    require cd[(arg4 + cd[(arg4 + 36)] + 772)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 >= 1856 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1888
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1664] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + 1856
    require cd[(arg4 + cd[(arg4 + 36)] + 804)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 >= 1888 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920 <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1920
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1696] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + 1888
    require cd[(arg4 + cd[(arg4 + 36)] + 836)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 >= 1920 and (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 1952
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1952
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 836)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1728] = (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 676)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 708)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 740)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 804)] + 36)]) + 1920
    idx = 0
    while uint8(idx) < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 772)] + 36)]:
        require uint8(idx) < mem[mem[1664]]
        _4878 = mem[(32 * uint8(idx)) + mem[1664] + 32]
        require uint8(idx) < mem[mem[1568]]
        _4881 = mem[(32 * uint8(idx)) + mem[1568] + 32]
        require uint8(idx) < mem[mem[1728]]
        _4886 = mem[(32 * uint8(idx)) + mem[1728] + 32]
        _4888 = mem[64]
        mem[mem[64] + 36] = mem[(32 * uint8(idx)) + mem[1664] + 44 len 20]
        mem[mem[64] + 68] = _4881
        _4889 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_4889 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4889 + 36 len 28]
        mem[64] = _4888 + 164
        mem[_4888 + 100] = 32
        mem[_4888 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_4886)):
            revert with 0, 'Address: call to non-contract'
        _4903 = mem[_4889]
        s = 0
        while s < _4903:
            mem[s + _4888 + 164] = mem[s + _4889 + 32]
            s = s + 32
            continue 
        if ceil32(_4903) <= _4903:
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5708 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5727 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5708
                    mem[_4888 + 232] = _5727
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5708, _5727, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5797 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5814 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5797
                    mem[_4888 + 232] = _5814
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5797, _5814, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5711 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5729 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5711
                    mem[_4888 + ceil32(return_data.size) + 233] = _5729
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5711, _5729, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5801 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5815 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5801
                    mem[_4888 + ceil32(return_data.size) + 233] = _5815
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5801, _5815, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        else:
            mem[_4888 + _4903 + 164] = 0
            call address(_4886).mem[_4888 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4888 + 168 len _4903 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_4888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + 232] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + 232]
                if not mem[96]:
                    require uint8(idx) < mem[mem[1600]]
                    _5730 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5751 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5730
                    mem[_4888 + 232] = _5751
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5730, _5751, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5817 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5830 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + 196
                    mem[_4888 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + 200] = _5817
                    mem[_4888 + 232] = _5830
                    mem[_4888 + 264] = this.address
                    mem[_4888 + 296] = 128
                    mem[_4888 + 328] = mem[_4888 + 164]
                    s = 0
                    while s < mem[_4888 + 164]:
                        mem[s + _4888 + 360] = mem[s + _4888 + 196]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + 164]) > mem[_4888 + 164]:
                        mem[_4888 + mem[_4888 + 164] + 360] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5817, _5830, address(this.address), Array(len=mem[_4888 + 164], data=mem[_4888 + 360 len ceil32(mem[_4888 + 164])])
            else:
                mem[64] = _4888 + ceil32(return_data.size) + 165
                mem[_4888 + 164] = return_data.size
                mem[_4888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _4888 + ceil32(return_data.size) + 233] = mem[idx + _4888 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_4888 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    require uint8(idx) < mem[mem[1600]]
                    _5733 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5753 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5733
                    mem[_4888 + ceil32(return_data.size) + 233] = _5753
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5733, _5753, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
                else:
                    require return_data.size >= 32
                    require mem[_4888 + 196] == bool(mem[_4888 + 196])
                    if not mem[_4888 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require uint8(idx) < mem[mem[1600]]
                    _5821 = mem[(32 * uint8(idx)) + mem[1600] + 32]
                    require uint8(idx) < mem[mem[1632]]
                    _5831 = mem[(32 * uint8(idx)) + mem[1632] + 32]
                    mem[64] = _4888 + ceil32(return_data.size) + 197
                    mem[_4888 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4888 + ceil32(return_data.size) + 201] = _5821
                    mem[_4888 + ceil32(return_data.size) + 233] = _5831
                    mem[_4888 + ceil32(return_data.size) + 265] = this.address
                    mem[_4888 + ceil32(return_data.size) + 297] = 128
                    mem[_4888 + ceil32(return_data.size) + 329] = mem[_4888 + ceil32(return_data.size) + 165]
                    s = 0
                    while s < mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[s + _4888 + ceil32(return_data.size) + 361] = mem[s + _4888 + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4888 + ceil32(return_data.size) + 165]) > mem[_4888 + ceil32(return_data.size) + 165]:
                        mem[_4888 + ceil32(return_data.size) + mem[_4888 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_4878))
                    call address(_4878).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5821, _5831, address(this.address), Array(len=mem[_4888 + ceil32(return_data.size) + 165], data=mem[_4888 + ceil32(return_data.size) + 361 len ceil32(mem[_4888 + ceil32(return_data.size) + 165])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _4873 = mem[1088]
    _4874 = mem[1120]
    _4877 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _4874
    _4884 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_4877 + 100] = 32
    mem[_4877 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_4873)):
        revert with 0, 'Address: call to non-contract'
    _4897 = mem[_4884]
    mem[_4877 + 164 len ceil32(mem[_4884])] = mem[_4884 + 32 len ceil32(mem[_4884])]
    if ceil32(_4897) <= _4897:
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5702 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5702
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5702, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5702, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5702, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5788 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5788
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5788, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5788, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5788, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5703 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5703
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5703, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5703, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5703, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5789 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5789
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5789, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5789, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5789, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[_4877 + _4897 + 164] = 0
        call address(_4873) with:
             gas gas_remaining wei
            args mem[_4877 + 168 len _4897 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if mem[1312]:
                    _5724 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5724
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5724, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5724, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5724, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5812 = mem[1312]
                    mem[_4877 + 200] = profitTakerAddress
                    mem[_4877 + 232] = _5812
                    mem[_4877 + 164] = 68
                    mem[_4877 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + 264] = 32
                    mem[_4877 + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + 328 len 96] = 0, profitTakerAddress, _5812, 0
                    mem[_4877 + 396] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5812, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5812, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + 360] == bool(mem[_4877 + 360])
                            if not mem[_4877 + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_4877 + 164] = return_data.size
            mem[_4877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if mem[1312]:
                    _5725 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5725
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5725, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5725, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5725, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                require mem[_4877 + 196] == bool(mem[_4877 + 196])
                if not mem[_4877 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[1312]:
                    _5813 = mem[1312]
                    mem[_4877 + ceil32(return_data.size) + 201] = profitTakerAddress
                    mem[_4877 + ceil32(return_data.size) + 233] = _5813
                    mem[_4877 + ceil32(return_data.size) + 165] = 68
                    mem[_4877 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4877 + ceil32(return_data.size) + 265] = 32
                    mem[_4877 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_4873)):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4877 + ceil32(return_data.size) + 329 len 96] = 0, profitTakerAddress, _5813, 0
                    mem[_4877 + ceil32(return_data.size) + 397] = 0
                    call address(_4873) with:
                       funct Mask(32, 224, 0, profitTakerAddress, _5813, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, profitTakerAddress, _5813, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_4877 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4877 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4877 + ceil32(return_data.size) + 361] == bool(mem[_4877 + ceil32(return_data.size) + 361])
                            if not mem[_4877 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_4877 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
