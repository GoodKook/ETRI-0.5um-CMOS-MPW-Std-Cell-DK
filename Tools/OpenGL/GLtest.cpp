// main.cpp
// OpenGL 3+, GLEW, GLFW3
//
//출처: https://lvolz.tistory.com/34 [sing:티스토리]
// 	sudo apt install libglew-dev glew-utils # GLEW 라이브러리 및 유틸리티 설치
// 	sudo apt install libglfw3-dev           # GLFW 라이브러리 설치
// Build: g++ GLtest.cpp -o GLtest -lGL -lGLEW -lglfw

#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include <iostream>

int main(void)
{
	GLFWwindow* window; 

	// GLFW 라이브러리 초기화
	if (!glfwInit())
		return -1;

	// GLFW 윈도우 생성 (OpenGL context 포함한)
	window = glfwCreateWindow(500, 500, "Hello OpenGL!!!", NULL, NULL);
	if (!window)
	{
		glfwTerminate();
		return -1;
	}

	// 현재 OpenGL context를 윈도우에서 하나로 만들기
	glfwMakeContextCurrent(window);

	// GLEW 라이브러리 초기화
	if (glewInit() != GLEW_OK)
		std::cout << "GLEW Init Error!" << std::endl;

	// 내 pc 그래픽 카드에서 지원하는 OpenGL 버전 프린트
	std::cout << glGetString(GL_VERSION) << std::endl;

	// OpenGL 초기
	glEnable(GL_DEPTH_TEST);
	glEnable(GL_CULL_FACE);
	glClearColor(0.0, 0.0, 1.0, 0.0); // 윈도우 내부색 파란색으로 (RGB)

	// 유저가 윈도우 닫을 때 까지 루프 돌리기
	while (!glfwWindowShouldClose(window))
	{
		// 렌더
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		// 앞 버퍼랑 뒷 버퍼 스와프
		glfwSwapBuffers(window);

		// 이벤트 처리
		glfwPollEvents();
	}

	glfwTerminate();
	
	return 0;
}

